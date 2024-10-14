Map<String, String> get apiHeader => {
      ApiHeaderKey.authorization: ApiHeaderValue.authorization,
      ApiHeaderKey.accept: ApiHeaderValue.accept,
    };

class ApiHeaderKey {
  static const authorization = 'Authorization';
  static const accept = 'accept';
}

class ApiHeaderValue {
  static String authorization = 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOGM2MzhhZTI1ZTEyMmFhMDQxMWVjMDJiMjZkZGZlOSIsIm5iZiI6MTcyODc5MzEzMi4yMDU2NjIsInN1YiI6IjY2MGE0ZjkxY2FiZmU0MDE3ZTJmMGM4MCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.l4EBbKEno50hy6G_1BKhsdM8Tm5Ck6ggns5YwLgX_uQ';
  static const accept = 'application/json';
}
