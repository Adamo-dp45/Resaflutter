import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_reservation_request.freezed.dart';
part 'create_reservation_request.g.dart';

/// Corps du `POST /reservation/reservations` (création invité).
///
/// `descente` optionnelle (défaut backend = terminus). `returnUrl` peut contenir
/// le jeton `{code}`, remplacé par le backend au retour du paiement.
@freezed
abstract class CreateReservationRequest with _$CreateReservationRequest {
  const factory CreateReservationRequest({
    required String nom,
    required String contact,
    required int voyage,
    required int montee,
    int? descente,
    String? returnUrl,
  }) = _CreateReservationRequest;

  factory CreateReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReservationRequestFromJson(json);
}
