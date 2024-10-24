import 'package:freezed_annotation/freezed_annotation.dart';

part 'LocationValue.freezed.dart';
part 'LocationValue.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String street,
    required String city,
    required String state,
    required String country,
    required String timezone,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
