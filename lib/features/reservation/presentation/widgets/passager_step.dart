import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/booking_controller.dart';
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
      ],
    );
  }
}
