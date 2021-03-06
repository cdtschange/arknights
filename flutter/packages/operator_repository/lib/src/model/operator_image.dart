import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operator_image.g.dart';

@JsonSerializable()
class OperatorImage extends Equatable {
  const OperatorImage({
    required this.name,
    required this.headUrls,
    required this.imageUrls,
  });

  factory OperatorImage.fromJson(Map<String, dynamic> json) =>
      _$OperatorImageFromJson(json);
  Map<String, dynamic> toJson() => _$OperatorImageToJson(this);

  final String name;
  final List<String> headUrls;
  final List<String> imageUrls;

  @override
  List<Object?> get props => [name, headUrls, imageUrls];
}
