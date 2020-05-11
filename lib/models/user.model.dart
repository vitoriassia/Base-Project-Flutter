class UserModel {
  int id;
  String name;
  String email;
  String photo;
  String role;
  String token;
  String street;
  String number;
  String neighborhood;
  String company;
  String city;
  String state;
  String password;
  String cellphone;
  // DateTime dataNascimento;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.photo,
    this.role,
    this.token,
    this.street,
    this.number,
    this.neighborhood,
    this.company,
    this.city,
    this.state,
    this.password,
    this.cellphone,
    // this.dataNascimento,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    cellphone = json['cellphone'];
    photo = json['photo'];
    role = json['role'];
    token = json['access_token'];
    street = json['street'];
    number = json['number'];
    neighborhood = json['neighborhood'];
    company = 'InnovareTi';
    city = json['city_id'];
    state = json['state_id'];
    password = '';
  }

  Map<String, dynamic> toJson(passwordConfirm) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['photo'] = this.photo;
    data['role'] = this.role;
    data['token'] = this.token;
    data['company'] = this.company;
    data['city'] = this.city;
    data['state'] = this.state;
    data['password'] = this.password;
    data['cellphone'] = this.cellphone;
    data['neighborhood'] = this.neighborhood;
    data['number'] = this.number;
    data['city_id'] = this.city;
    data['state_id'] = this.state;
    data['street'] = this.street;
    //data['date_birth'] = this.dataNascimento;
    if (passwordConfirm != null) {
      data['password_confirmation'] = passwordConfirm;
    }

    return data;
  }
}
