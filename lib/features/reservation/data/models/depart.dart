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
    /// Numéro de départ DU JOUR (« Départ 2 ») : le repère que la gare annonce
    /// et que le billet portera. Attribué par le serveur.
    int? numerodepart,
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

  /// Comment on NOMME ce départ au client : « Départ 2 ».
  ///
  /// Le code voyage est du vocabulaire d'exploitation, il ne lui dit rien ; le numéro, lui, est ce
  /// que la gare annoncera à l'embarquement et ce que portera son billet. Repli sur le code tant
  /// qu'une API n'envoie pas le numéro, plutôt que d'afficher « Départ null ».
  String get libelleDepart =>
      numerodepart != null ? 'Départ $numerodepart' : (codevoyage ?? '');
}
