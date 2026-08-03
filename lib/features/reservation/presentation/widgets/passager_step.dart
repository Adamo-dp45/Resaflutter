import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/booking_controller.dart';
import '../providers/reservation_providers.dart';
import 'trip_summary.dart';

/// Étape 3 — identité du passager (nom + téléphone), avec récap du trajet.
class PassagerStep extends ConsumerStatefulWidget {
  const PassagerStep({super.key});

  @override
  ConsumerState<PassagerStep> createState() => _PassagerStepState();
}

class _PassagerStepState extends ConsumerState<PassagerStep> {
  late final TextEditingController _nom;
  late final TextEditingController _contact;

  @override
  void initState() {
    super.initState();
    final state = ref.read(bookingControllerProvider);
    _nom = TextEditingController(text: state.nom);
    _contact = TextEditingController(text: state.contact);
  }

  @override
  void dispose() {
    _nom.dispose();
    _contact.dispose();
    super.dispose();
  }

  void _sync() {
    ref.read(bookingControllerProvider.notifier).setPassenger(
          nom: _nom.text,
          contact: _contact.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const TripSummary(),
        const SizedBox(height: 24),
        Text('Vos informations',
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),
        TextField(
          controller: _nom,
          textCapitalization: TextCapitalization.words,
          onChanged: (_) => _sync(),
          decoration: const InputDecoration(
            labelText: 'Nom complet',
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _contact,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9+ ]')),
          ],
          onChanged: (_) => _sync(),
          decoration: const InputDecoration(
            labelText: 'Téléphone',
            helperText: 'Sert à retrouver et payer votre réservation',
            prefixIcon: Icon(Icons.phone_outlined),
          ),
        ),
        // Prévenir AVANT l'engagement : la place n'est tenue que le temps du paiement.
        // Le délai vient de la compagnie (API) — jamais codé en dur ici.
        ...(() {
          final delai = ref
              .watch(compagnieProvider)
              .maybeWhen(data: (c) => c.delaiPaiementMinutes, orElse: () => 0);
          if (delai <= 0) return <Widget>[];
          final scheme = Theme.of(context).colorScheme;
          return <Widget>[
            const SizedBox(height: 20),
            Card(
              color: scheme.primaryContainer,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.timer_outlined,
                        size: 18, color: scheme.onPrimaryContainer),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Votre place sera tenue $delai minutes, le temps de régler. '
                        'Passé ce délai, elle est remise en vente.',
                        style: TextStyle(color: scheme.onPrimaryContainer),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        })(),
      ],
    );
  }
}
