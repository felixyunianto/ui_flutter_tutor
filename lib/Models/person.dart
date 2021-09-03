import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Person{
  @JsonKey()
  int id;
  @JsonKey()
  String firstname;
  @JsonKey()
  String lastname;
  @JsonKey()
  String email;
  @JsonKey()
  String createdAt;
  @JsonKey()
  String updatedAt;

  Person();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}