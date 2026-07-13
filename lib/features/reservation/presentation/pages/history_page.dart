import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_state_views.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../providers/reservation_providers.dart';
import '../widgets/reservation_details.dart';

/// Historique des réservations d'un client, retrouvé par son téléphone.
class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({super.key});

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage> {
  final _contact = TextEditingController();
  String? _query;

  @override
  void dispose() {
    _contact.dispose();
    super.dispose();
  }

  void _submit() {
    final contact = _contact.text.trim();
    if (contact.length < 6) return;
    FocusScope.of(context).unfocus();
    setState(() => _query = contact);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes réservations')),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _contact,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9+ ]')),
                      ],
                      onSubmitted: (_) => _submit(),
                      decoration: const InputDecoration(
                        labelText: 'Votre téléphone',
                        prefixIcon: Icon(Icons.phone_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton.filled(
                    onPressed: _submit,
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Expanded(child: _query == null ? _placeholder() : _list(_query!)),
          ],
        ),
      ),
    );
  }

  Widget _placeholder() => const AppEmptyView(
        icon: Icons.history,
        message: 'Entrez votre téléphone pour retrouver vos réservations.',
      );

  Widget _list(String contact) {
    final history = ref.watch(historiqueProvider(contact));
    return AsyncValueWidget(
      value: history,
      onRetry: () => ref.invalidate(historiqueProvider(contact)),
      data: (list) {
        if (list.isEmpty) {
          return const AppEmptyView(
            icon: Icons.inbox_outlined,
            message: 'Aucune réservation trouvée pour ce numéro.',
          );
        }
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(historiqueProvider(contact)),
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            itemCount: list.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, i) =>
                ReservationDetails(reservation: list[i]),
          ),
        );
      },
    );
  }
}
