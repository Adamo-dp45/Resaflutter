import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/async_value_widget.dart';
import '../providers/reservation_providers.dart';
import '../widgets/reservation_details.dart';

/// Suivi d'une réservation par code + téléphone.
class TrackPage extends ConsumerStatefulWidget {
  const TrackPage({super.key});

  @override
  ConsumerState<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends ConsumerState<TrackPage> {
  final _code = TextEditingController();
  final _contact = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  SuiviRef? _query;

  @override
  void dispose() {
    _code.dispose();
    _contact.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    FocusScope.of(context).unfocus();
    setState(() {
      _query = (code: _code.text.trim(), contact: _contact.text.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Suivre une réservation')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _code,
                    textCapitalization: TextCapitalization.characters,
                    decoration: const InputDecoration(
                      labelText: 'Code de réservation',
                      hintText: 'RES-2026-42',
                      prefixIcon: Icon(Icons.confirmation_number_outlined),
                    ),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? 'Code requis'
                        : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _contact,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9+ ]')),
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Téléphone',
                      prefixIcon: Icon(Icons.phone_outlined),
                    ),
                    validator: (v) => (v == null || v.trim().length < 6)
                        ? 'Téléphone requis'
                        : null,
                  ),
                  const SizedBox(height: 20),
                  FilledButton.icon(
                    onPressed: _submit,
                    icon: const Icon(Icons.search),
                    label: const Text('Rechercher'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            if (_query != null) _result(_query!),
          ],
        ),
      ),
    );
  }

  Widget _result(SuiviRef query) {
    final reservation = ref.watch(suiviProvider(query));
    return AsyncValueWidget(
      value: reservation,
      onRetry: () => ref.invalidate(suiviProvider(query)),
      data: (r) => ReservationDetails(reservation: r),
    );
  }
}
