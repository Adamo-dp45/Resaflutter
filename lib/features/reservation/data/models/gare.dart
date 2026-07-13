import 'package:freezed_annotation/freezed_annotation.dart';

part 'gare.freezed.dart';
part 'gare.g.dart';

/// Gare (arrêt) d'une ville — `GET /reservation/gares?ville=`.
@freezed
abstract class Gare with _$Gare {
  const factory Gare({
    required int id,
    required String libelle,
    String? ville,
  }) = _Gare;

  factory Gare.fromJson(Map<String, dynamic> json) => _$GareFromJson(json);
}
