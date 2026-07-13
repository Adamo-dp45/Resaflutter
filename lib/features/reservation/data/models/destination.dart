import 'package:freezed_annotation/freezed_annotation.dart';

import 'gare.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

/// Destination accessible depuis une gare + tarif — `GET /reservation/destinations?gare=`.
@freezed
abstract class Destination with _$Destination {
  const factory Destination({
    required Gare gare,
    required int montant,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
}
