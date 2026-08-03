import 'package:freezed_annotation/freezed_annotation.dart';

part 'compagnie.freezed.dart';
part 'compagnie.g.dart';

/// Identité publique (branding) de la compagnie — `GET /reservation/compagnie`.
@freezed
abstract class Compagnie with _$Compagnie {
  const factory Compagnie({
    required String slug,
    String? libelle,
    String? sigle,
    String? contact,
    String? siteweb,
    /// Minutes pendant lesquelles une réservation non payée tient sa place
    /// (réglé par la compagnie et exposé par l'API — jamais deviné ici).
    @Default(0) int delaiPaiementMinutes,
  }) = _Compagnie;

  factory Compagnie.fromJson(Map<String, dynamic> json) =>
      _$CompagnieFromJson(json);
}
