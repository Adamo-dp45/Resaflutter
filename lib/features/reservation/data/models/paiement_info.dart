import 'package:freezed_annotation/freezed_annotation.dart';

part 'paiement_info.freezed.dart';
part 'paiement_info.g.dart';

/// Bloc paiement renvoyé à la création d'une réservation.
///
/// - [url] non nul → page hébergée du prestataire (rediriger l'utilisateur).
/// - [estSimule] `true` → pas de vrai prestataire : l'app simule l'écran de
///   paiement puis appelle le webhook avec [reference].
@freezed
abstract class PaiementInfo with _$PaiementInfo {
  const factory PaiementInfo({
    required String reference,
    String? url,
    @Default(false) bool estSimule,
  }) = _PaiementInfo;

  factory PaiementInfo.fromJson(Map<String, dynamic> json) =>
      _$PaiementInfoFromJson(json);
}
