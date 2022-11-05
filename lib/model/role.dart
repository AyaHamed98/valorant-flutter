class Role {
  String uuid;
  String displayName;
  String description;
  String displayIcon;
  String assetPath;

  Role(
      {required this.uuid,
        required this.displayName,
        required this.description,
        required this.displayIcon,
        required this.assetPath}
      );

  factory Role.fromJson(Map<String, dynamic> json) {
    return Role(
      uuid: json["uuid"],
      displayName: json["displayName"],
      description: json["description"],
      displayIcon: json["displayIcon"],
      assetPath: json["assetPath"],
    );
  }
//

}
