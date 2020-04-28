class ResponseModel {
  String message;
  var data;
  bool status;

  ResponseModel({this.message, this.data, this.status});

  ResponseModel.fromResponse(response) {
    status = response.statusCode == 200 ? true : false;
    data = response.data;
  }
  ResponseModel.fromResponseLogin(response) {
    switch (response.statusCode) {
      case 200:
        status = true;
        data = response.data;
        break;
      case 401:
        status = false;
        data = response.data;
        break;
      default:
        status = false;
        data = 'Erro no servidor';
    }
  }

  ResponseModel.fromResponseCreateUser(response) {
    switch (response.statusCode) {
      case 200:
        status = true;
        message = response.data;
        break;
      case 500:
        status = false;
        message = response.data;
        break;
      default:
        status = false;
        data = 'Erro no servidor';
    }
  }

  ResponseModel.fromResponseEditUser(response) {
    switch (response.statusCode) {
      case 200:
        status = true;
        message = response.data;
        break;
      case 500:
        status = false;
        message = response.data["email"][0];
        break;
      default:
        status = false;
        data = 'Erro no servidor';
    }
  }
}
