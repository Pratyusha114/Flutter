

class ApiResponseState<T> {

  bool? loading = false;
  T? response;
  AlertModel? alertModel = const AlertModel();

  ApiResponseState({this.loading, this.alertModel, this.response});
}

class AlertModel {
  final bool? showAlert;
  final String? message;

  const AlertModel({this.showAlert, this.message});
}
