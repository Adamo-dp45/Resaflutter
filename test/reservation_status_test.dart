import 'package:flutter_test/flutter_test.dart';
import 'package:resaflutter/features/reservation/data/models/reservation.dart';
import 'package:resaflutter/features/reservation/domain/reservation_status.dart';

void main() {
  group('ReservationStatus.fromApi', () {
    test('mappe les valeurs connues', () {
      expect(ReservationStatus.fromApi('EN_ATTENTE'),
          ReservationStatus.enAttente);
      expect(ReservationStatus.fromApi('CONFIRMEE'),
          ReservationStatus.confirmee);
      expect(ReservationStatus.fromApi('A_REGULARISER'),
          ReservationStatus.aRegulariser);
    });

    test('retombe sur unknown pour une valeur inconnue ou nulle', () {
      expect(ReservationStatus.fromApi('???'), ReservationStatus.unknown);
      expect(ReservationStatus.fromApi(null), ReservationStatus.unknown);
    });
  });

  group('Reservation', () {
    Reservation build({
      required String etatpaiement,
      String statut = 'CONFIRMEE',
    }) {
      return Reservation(
        code: 'RES-2026-1',
        statut: statut,
        etatpaiement: etatpaiement,
      );
    }

    test('isPaid reflète etatpaiement', () {
      expect(build(etatpaiement: 'PAYE').isPaid, isTrue);
      expect(build(etatpaiement: 'EN_ATTENTE_PAIEMENT').isPaid, isFalse);
    });

    test('désérialise le JSON de l\'API', () {
      final r = Reservation.fromJson(const {
        'code': 'RES-2026-9',
        'statut': 'EN_ATTENTE',
        'etatpaiement': 'EN_ATTENTE_PAIEMENT',
        'montant': 5000,
        'bonDisponible': false,
      });
      expect(r.code, 'RES-2026-9');
      expect(r.montant, 5000);
      expect(r.status, ReservationStatus.enAttente);
      expect(r.paymentStatus, PaymentStatus.enAttente);
    });
  });
}
