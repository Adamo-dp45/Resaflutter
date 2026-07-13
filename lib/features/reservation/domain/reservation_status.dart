/// Statut du cycle de vie d'une réservation (miroir de l'enum backend
/// `ReservationStatus`). La valeur brute de l'API est conservée et mappée de
/// façon tolérante : une valeur inconnue retombe sur [unknown] au lieu de faire
/// planter la désérialisation.
enum ReservationStatus {
  enAttente('EN_ATTENTE', 'En attente de paiement'),
  confirmee('CONFIRMEE', 'Confirmée'),
  aRegulariser('A_REGULARISER', 'À régulariser'),
  expiree('EXPIREE', 'Expirée'),
  annulee('ANNULEE', 'Annulée'),
  unknown('', 'Inconnu');

  const ReservationStatus(this.apiValue, this.label);

  final String apiValue;
  final String label;

  static ReservationStatus fromApi(String? value) {
    return ReservationStatus.values.firstWhere(
      (s) => s.apiValue == value,
      orElse: () => ReservationStatus.unknown,
    );
  }
}

/// État de paiement d'une réservation (miroir de `etatpaiement` backend).
enum PaymentStatus {
  enAttente('EN_ATTENTE_PAIEMENT', 'Paiement en attente'),
  paye('PAYE', 'Payé'),
  echec('ECHEC', 'Paiement échoué'),
  unknown('', 'Inconnu');

  const PaymentStatus(this.apiValue, this.label);

  final String apiValue;
  final String label;

  bool get isPaid => this == PaymentStatus.paye;

  static PaymentStatus fromApi(String? value) {
    return PaymentStatus.values.firstWhere(
      (s) => s.apiValue == value,
      orElse: () => PaymentStatus.unknown,
    );
  }
}
