import 'package:freezed_annotation/freezed_annotation.dart';

part 'ville.freezed.dart';
part 'ville.g.dart';

/// Ville desservie — `GET /reservation/villes`.
@freezed
abstract class Ville with _$Ville {
  const factory Ville({
    required int id,
    required String nom,
  }) = _Ville;

  factory Ville.fromJson(Map<String, dynamic> json) => _$VilleFromJson(json);
}
