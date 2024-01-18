enum EndpointPath {
  tasks("/tasks"),
  login("auth/login"),
  registration("auth/registration");

  const EndpointPath(this.value);

  final String value;
}