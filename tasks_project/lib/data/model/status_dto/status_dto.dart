enum Status {
  done(true),
  inProgress(false);

  final bool value;
  const Status(this.value);
}

extension StatusName on Status {
  String get name {
    switch (this) {
      case Status.done:
        return 'Done';
      case Status.inProgress:
        return 'In progress';
    }
  }
}