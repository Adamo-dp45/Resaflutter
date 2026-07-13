import 'package:freezed_annotation/freezed_annotation.dart';

part 'depart.freezed.dart';
part 'depart.g.dart';

/// Un départ réservable (voyage daté) sur un tronçon — `GET /reservation/departs`.
///
/// `placesDisponibles` est INDICATIF (surréservation tolérée côté backend) :
/// la place n'est garantie qu'à l'émission du billet à la gare.
@freezed
abstract class Depart with _$Depart {
  const factory Depart({
    required int voyageId,
    String? codevoyage,
    DateTime? datedepartprevue,
    DateTime? datearriveeprevue,
    @Default(0) int placesDisponibles,
    int? montant,
  }) = _Depart;

  factory Depart.fromJson(Map<String, dynamic> json) => _$DepartFromJson(json);
}
