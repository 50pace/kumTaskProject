import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tasks_project/data/remote_data_source/network/constants.dart';
import 'package:tasks_project/data/remote_data_source/network/network_client.dart';

class NetworkClientImpl implements NetworkClient {

  final Dio _dio;

  NetworkClientImpl(this._dio) {
    updateConnectionTimeout();
  }

  @override
  void updateConnectionTimeout({int? connectionTimeout}) {
    _dio.options.connectTimeout = Duration (
        seconds: connectionTimeout ?? NetworkConstants.connectionTimeoutInSeconds
    );
  }

  void updateBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  @override
  void addAuthHeader(String accessToken) {
    _addHeaderParam(HttpHeaders.authorizationHeader,
        "${NetworkConstants.bearer}$accessToken");
  }

  void addContentTypeHeader() {
    _addHeaderParam(HttpHeaders.contentTypeHeader, 'application/json');
  }

  @override
  void addAuthInterceptor() {
    // TODO: implement addAuthInterceptor
  }

  @override
  Future<T> get<T>(String path, {Map<String, dynamic>? queryParams}) async {
    final finalPath = "${NetworkConstants.baseUrl}$path";
    final response = await _dio.get(finalPath, queryParameters: queryParams);
    return response.data as T;
  }

  @override
  Future<T> post<T, K>(String path, K body) async {
    final finalPath = "${NetworkConstants.baseUrl}$path";
    final response = await _dio.post(finalPath, data: body);
    return response.data as T;
  }

  @override
  Future<T> delete<T>(String path, {Map<String, dynamic>? queryParams}) async {
    final finalPath = "${NetworkConstants.baseUrl}$path";
    final response = await _dio.delete(finalPath, queryParameters: queryParams);
    return response.data as T;
  }

  @override
  Future<T> patch<T, K>(String path, K body) async {
    final finalPath = "${NetworkConstants.baseUrl}$path";
    final response = await _dio.patch(finalPath, data: body);
    return response.data as T;
  }

  void _addHeaderParam(String headerName, String headerValue) {
    _dio.options.headers[headerName] = headerValue;
  }

}