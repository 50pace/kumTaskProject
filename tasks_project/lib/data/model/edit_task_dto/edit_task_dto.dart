import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_task_dto.freezed.dart';
part 'edit_task_dto.g.dart';

@freezed
class EditTaskDto with _$EditTaskDto {

  const factory EditTaskDto({
    required String id,
    required String title,
    required String description,
    required String priority,
    required bool done
  }) = _EditTaskDto;

  factory EditTaskDto.fromJson(Map<String, Object?> json) => _$EditTaskDtoFromJson(json);
}