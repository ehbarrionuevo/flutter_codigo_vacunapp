class LicenseModel {
  String name;
  String dni;
  String url;

  LicenseModel({
    required this.name,
    required this.dni,
    required this.url,
  });

  factory LicenseModel.fromJson(Map<String, dynamic> json) => LicenseModel(
        name: json["name"],
        dni: json["dni"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "dni": dni,
        "url": url,
      };
}
