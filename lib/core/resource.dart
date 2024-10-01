

sealed class Resource<T> {
  const Resource();
}


class Success<T> extends Resource<T> {
  final T data;

  const Success({required this.data});
}

class Error<T> extends Resource<T> {
  final String errorMessage;

  const Error({required this.errorMessage});
}
