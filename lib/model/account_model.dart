// object Account class
class Account {
  String id;
  String email;
  String phone;
  String password;
  String confirm_password;

  Account({required this.id, required this.email,required this.phone,required this.password,required this.confirm_password});
  Account.from({required this.id,required this.email,required this.phone, required this.password,required this.confirm_password});

  Account.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
  phone=json['phone'],
        password = json['password'],
  confirm_password=json['confirm_password'];


  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'phone':phone,
    'password': password,
    'confirm_password':confirm_password,
  };

}