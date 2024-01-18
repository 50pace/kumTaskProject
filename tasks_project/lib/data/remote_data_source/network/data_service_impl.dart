import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_constats.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';
import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/data/model/auth_response_dto/auth_response_dto.dart';
import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/data/model/task_list_dto/task_list_dto.dart';
import 'package:tasks_project/data/remote_data_source/network/data_service.dart';
import 'package:tasks_project/data/remote_data_source/network/endpoint_path.dart';
import 'package:tasks_project/data/remote_data_source/network/network_client.dart';

class DataServiceImpl implements DataService {

  final NetworkClient networkClient;
  final SharedPreferencesManager sharedPreferencesManager;

  DataServiceImpl(this.networkClient, this.sharedPreferencesManager);

  @override
  Future<AuthResponseDto> login(AuthRequestDto authRequestDto) async {
    final response = await networkClient.post(EndpointPath.login.value, authRequestDto.toJson());
    return AuthResponseDto.fromJson(response);
  }

  @override
  Future register(AuthRequestDto authRequestDto) async {
    final response = await networkClient.post(EndpointPath.registration.value, authRequestDto.toJson());
    return response;
  }

  @override
  Future<TaskListDto> getTasks() async {
    networkClient.addAuthHeader(getUserToken());
    final response = await networkClient.get(EndpointPath.tasks.value);
    return TaskListDto.fromJson(response);
  }

  @override
  Future<TaskDto> getTaskWithId(String taskId) async {
    final response = await networkClient.get(EndpointPath.tasks.value + taskId);
    return response;
  }

  @override
  Future<TaskDto> createTask(CreateTaskDto task) async {
    setRequiredHeaders();

    final response = await networkClient.post(EndpointPath.tasks.value, task.toJson());
    print(response);
    return TaskDto.fromJson(response);
  }

  @override
  Future deleteTask(String taskId) async {
    setRequiredHeaders();
    final response = await networkClient.delete('${EndpointPath.tasks.value}/$taskId');
    return response;
  }

  @override
  Future<TaskDto> editTask(EditTaskDto task) async {
    setRequiredHeaders();
    final response = await networkClient.patch('${EndpointPath.tasks.value}/${task.id}', task.toJson());
    return TaskDto.fromJson(response);
  }

  String getUserToken() {
    return sharedPreferencesManager.getString(SharedPreferencesConstants.accessToken);
  }

  setRequiredHeaders() {
    networkClient.addAuthHeader(getUserToken());
    networkClient.addContentTypeHeader();
  }
}