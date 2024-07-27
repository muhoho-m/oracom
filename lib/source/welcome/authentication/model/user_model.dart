// model to map user input values to textfields for storage

class OraUserModel {
  final String? id;
  final String fullName;
  final String email;
  final String brand;
  final String phoneNo;
  final String password;

  const OraUserModel ({
    this.id,
    required this.fullName,
    required this.email,
    required this.brand,
    required this.phoneNo,
    required this.password,
});

  // map data to json format for storage
  toJson(){
    return {
      "Full Name": fullName,
      "Email": email,
      "Brand": brand,
      "Phone": phoneNo,
      "Password": password,
    };
  }

}