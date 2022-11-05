import 'package:valorant_app/model/role.dart';

import '../helper/extantion/extantionclass.dart';

class Agent {
  String displayName;
  String description;
  String developerName;
  String displayIconSmall;
  List backgroundGradientColors;
  String? bustPortrait;
  Role? role;

  Agent({
    required this.backgroundGradientColors,
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.displayIconSmall,
    this.bustPortrait,
    this.role,
  });

  factory Agent.fromJson(Map<String, dynamic> json) {
    return Agent(
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        displayIconSmall: json["displayIconSmall"],
        role: json['role'] != null ? Role.fromJson(json['role']) : null,
        bustPortrait: json["bustPortrait"],
        backgroundGradientColors: List.of(json["backgroundGradientColors"])
            .map(
              (i) => HexColor.fromHex(i),
            )
            .toList());
  }
//

}
