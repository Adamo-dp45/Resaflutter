import 'package:freezed_annotation/freezed_annotation.dart';

part 'depart.freezed.dart';
part 'depart.g.dart';

/// Un départ réservable (voyage daté) sur un tronçon — `GET /reservation/departs`.
///
/// `placesDisponibles` est INDICATIF (surréservation tolérée côté backend) :
/// la place n'est garantie qu'à l'émission du billet à la gare.
@freezed
abstract class Depart with _$Depart {
  const Depart._();

  const factory Depart({
    required int voyageId,
    String? codevoyage,
    /// Heure de passage du car À LA GARE DE MONTÉE demandée — calculée par l'API
    /// (durées de trajet par arrêt), jamais ici.
    DateTime? heurepassage,
    DateTime? datedepartprevue,
    DateTime? datearriveeprevue,
    @Default(0) int placesDisponibles,
    int? montant,
  }) = _Depart;

  factory Depart.fromJson(Map<String, dynamic> json) => _$DepartFromJson(json);

  /// Heure à laquelle le client doit être à SA gare : c'est toujours celle-ci qu'on
  /// affiche. Le départ du voyage depuis son origine ne le concerne pas s'il monte
  /// en cours de route. Repli sur ce départ tant que la ligne n'a pas ses durées
  /// d'arrêt renseignées — l'ancien affichage, jamais une heure inventée ici.
  DateTime? get heureEmbarquement => heurepassage ?? datedepartprevue;
}
