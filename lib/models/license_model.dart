class LicenseModel {

  String name;
  String dni;
  String url;

  LicenseModel({
    required this.name,
    required this.dni,
    required this.url,
  });


  Map<String, dynamic> toJson()=> {
    "name": name,
    "dni": dni,
    "url": url,
  };

}
