abstract class NetworkClient {
  void updateBaseUrl(String baseUrl);

  void updateConnectionTimeout({int? connectionTimeout});

  void addAuthInterceptor();

  void addAuthHeader(String accessToken);

  void addContentTypeHeader();

  Future<T> get<T>(String path);

  Future<T> post<T, K>(String path, K body);

  Future<T> delete<T>(String path);

  Future<T> patch<T, K>(String path, K body);
}
