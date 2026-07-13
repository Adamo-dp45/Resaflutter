import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printing/printing.dart';

import '../../data/models/compagnie.dart';
import '../../data/models/reservation.dart';
import '../pdf/reservation_voucher.dart';
import '../providers/reservation_providers.dart';

/// Bouton « Télécharger le bon (PDF) » : génère le bon de réservation et ouvre
/// la feuille système de partage/enregistrement/impression ([Printing.sharePdf]).
///
/// Le bon n'a de sens qu'une fois la réservation payée : le bouton est alors
/// activé (sinon désactivé, cohérent avec la règle backend).
class DownloadVoucherButton extends ConsumerStatefulWidget {
  const DownloadVoucherButton({super.key, required this.reservation});

  final Reservation reservation;

  @override
  ConsumerState<DownloadVoucherButton> createState() =>
      _DownloadVoucherButtonState();
}

class _DownloadVoucherButtonState extends ConsumerState<DownloadVoucherButton> {
  bool _busy = false;

  Future<void> _download() async {
    setState(() => _busy = true);
    try {
      // Branding pour l'en-tête ; on tolère son absence (bon généré quand même).
      Compagnie? compagnie;
      try {
        compagnie = await ref.read(compagnieProvider.future);
      } catch (_) {
        compagnie = null;
      }

      final bytes = await buildReservationVoucher(
        reservation: widget.reservation,
        compagnie: compagnie,
      );
      await Printing.sharePdf(
        bytes: bytes,
        filename: 'bon-${widget.reservation.code}.pdf',
      );
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Impossible de générer le bon.')),
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.reservation.isPaid && !_busy;
    return OutlinedButton.icon(
      onPressed: enabled ? _download : null,
      style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(52)),
      icon: _busy
          ? const SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.download_outlined),
      label: const Text('Télécharger le bon (PDF)'),
    );
  }
}
