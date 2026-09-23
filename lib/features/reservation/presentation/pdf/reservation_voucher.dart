import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../../core/formatting/formatters.dart';
import '../../data/models/compagnie.dart';
import '../../data/models/reservation.dart';

/// Construit le « bon de réservation » au format PDF (ticket 80 mm), aligné sur
/// le bon web du backend. N'utilise que les polices PDF standard : on évite donc
/// les glyphes non Latin-1 (`→`, `—`) au profit d'équivalents ASCII.
Future<Uint8List> buildReservationVoucher({
  required Reservation reservation,
  Compagnie? compagnie,
}) async {
  final doc = pw.Document(
    title: 'Bon ${reservation.code}',
    author: compagnie?.libelle ?? 'Réservation',
  );

  final titre = compagnie?.sigle ?? compagnie?.libelle ?? 'RESERVATION';

  doc.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.roll80,
      margin: const pw.EdgeInsets.symmetric(horizontal: 14, vertical: 16),
      build: (context) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.stretch,
        children: [
          // En-tête compagnie
          pw.Center(
            child: pw.Text(
              titre,
              style: pw.TextStyle(fontSize: 17, fontWeight: pw.FontWeight.bold),
            ),
          ),
          if (compagnie?.libelle != null)
            pw.Center(
              child: pw.Text(
                compagnie!.libelle!,
                style: const pw.TextStyle(
                  fontSize: 9,
                  color: PdfColors.grey700,
                ),
              ),
            ),
          if (compagnie?.contact != null)
            pw.Center(
              child: pw.Text(
                compagnie!.contact!,
                style: const pw.TextStyle(
                  fontSize: 9,
                  color: PdfColors.grey700,
                ),
              ),
            ),
          pw.SizedBox(height: 6),
          pw.Center(
            child: pw.Text(
              'BON DE RESERVATION',
              style: pw.TextStyle(
                fontSize: 12,
                fontWeight: pw.FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),

          // Code + statut
          pw.SizedBox(height: 8),
          pw.Center(
            child: pw.Text(
              reservation.code,
              style: pw.TextStyle(
                fontSize: 20,
                fontWeight: pw.FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ),
          pw.SizedBox(height: 6),
          pw.Center(child: _badge(reservation)),

          // QR code (lecture rapide du code en gare)
          pw.SizedBox(height: 10),
          pw.Center(
            child: pw.BarcodeWidget(
              barcode: pw.Barcode.qrCode(),
              data: reservation.code,
              width: 90,
              height: 90,
            ),
          ),

          _dashed(),
          pw.Center(
            child: pw.Text(
              '${reservation.montee ?? '-'}  ->  ${reservation.descente ?? '-'}',
              style: pw.TextStyle(fontSize: 13, fontWeight: pw.FontWeight.bold),
            ),
          ),
          _dashed(),

          // Détails
          _row('Passager', reservation.nomclient ?? '-'),
          _row('Telephone', reservation.contactclient ?? '-'),
          _row('Voyage', reservation.codevoyage ?? '-'),
          // Le client présentera ce bon au guichet : le numéro de départ est ce qu'on lui appellera.
          _row('No de depart', reservation.numerodepart?.toString() ?? '-'),
          _row(
            'Depart prevu',
            Formatters.dateTime(reservation.heureEmbarquement),
          ),
          _row('Montant', Formatters.money(reservation.montant)),

          _dashed(),
          pw.Text(
            'Presentez ce bon (code ${reservation.code}) a la gare de depart '
            'pour retirer votre billet et obtenir un siege. Le retrait doit se '
            'faire avant l\'heure limite, sans quoi la place est liberee '
            '(non remboursable).',
            style: const pw.TextStyle(fontSize: 8.5, color: PdfColors.grey800),
          ),
          pw.SizedBox(height: 10),
          pw.Center(
            child: pw.Text(
              'Bon genere le ${Formatters.dateTime(DateTime.now())}',
              style: const pw.TextStyle(fontSize: 8, color: PdfColors.grey500),
            ),
          ),
        ],
      ),
    ),
  );

  return doc.save();
}

pw.Widget _badge(Reservation reservation) {
  final paid = reservation.isPaid;
  final color = paid ? PdfColors.green800 : PdfColors.orange800;
  final label = paid
      ? (reservation.billetEmis != null ? 'BILLET EMIS' : 'PAYE')
      : 'EN ATTENTE';
  return pw.Container(
    padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: pw.BoxDecoration(
      border: pw.Border.all(color: color, width: 1.5),
      borderRadius: pw.BorderRadius.circular(10),
    ),
    child: pw.Text(
      label,
      style: pw.TextStyle(
        color: color,
        fontSize: 10,
        fontWeight: pw.FontWeight.bold,
      ),
    ),
  );
}

pw.Widget _row(String label, String value) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 2.5),
    child: pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Expanded(
          child: pw.Text(
            label,
            style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey700),
          ),
        ),
        pw.Expanded(
          child: pw.Text(
            value,
            textAlign: pw.TextAlign.right,
            style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

pw.Widget _dashed() => pw.Padding(
  padding: const pw.EdgeInsets.symmetric(vertical: 8),
  child: pw.Divider(height: 1, borderStyle: pw.BorderStyle.dashed),
);
