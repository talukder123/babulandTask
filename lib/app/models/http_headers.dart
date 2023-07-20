// To parse this JSON data, do
//
//     final httpHeaders = httpHeadersFromJson(jsonString);

import 'dart:convert';

HttpHeaders httpHeadersFromJson(String str) => HttpHeaders.fromJson(json.decode(str));

String httpHeadersToJson(HttpHeaders data) => json.encode(data.toJson());

class HttpHeaders {
  HttpHeaders({
    this.accessControlAllowOrigin = "*",
    this.accessControlAllowCredentials = "true",
    this.accessControlAllowHeaders = "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    this.accessControlAllowMethods = "POST, OPTIONS",
    this.contentType = "application/json",
    this.authorization,
    this.appAuth,
    this.id,
    this.mobNub,
  });

  final String accessControlAllowOrigin;
  final String accessControlAllowCredentials;
  final String accessControlAllowHeaders;
  final String accessControlAllowMethods;
  final String contentType;
  String? authorization;
  String? appAuth;
  int? id;
  int? mobNub;

  factory HttpHeaders.fromJson(Map<String, dynamic> json) => HttpHeaders(
        accessControlAllowOrigin: json["Access-Control-Allow-Origin"],
        accessControlAllowCredentials: json["Access-Control-Allow-Credentials"],
        accessControlAllowHeaders: json["Access-Control-Allow-Headers"],
        accessControlAllowMethods: json["Access-Control-Allow-Methods"],
        contentType: json["Content-Type"],
        authorization: json["Authorization"],
        appAuth: json["AppAuth"],
        id: json["Id"],
        mobNub: json["MOBILE_NUMBER"],
      );

  Map<String, String> toJson() => {
        "Access-Control-Allow-Origin": accessControlAllowOrigin,
        "Access-Control-Allow-Credentials": accessControlAllowCredentials,
        "Access-Control-Allow-Headers": accessControlAllowHeaders,
        "Access-Control-Allow-Methods": accessControlAllowMethods,
        "Content-Type": contentType,
        "Authorization": authorization.toString(),
        "AppAuth": appAuth.toString(),
        "Id": id.toString(),
        "MOBILE_NUMBER": mobNub.toString(),
      };
}
