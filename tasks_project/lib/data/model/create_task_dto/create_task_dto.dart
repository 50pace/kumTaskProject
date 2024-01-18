import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_task_dto.freezed.dart';
part 'create_task_dto.g.dart';

@freezed
class CreateTaskDto with _$CreateTaskDto {

  const factory CreateTaskDto({
    required String title,
    required String description,
    required String priority
  }) = _CreateTaskDto;

  factory CreateTaskDto.fromJson(Map<String, Object?> json) => _$CreateTaskDtoFromJson(json);
}