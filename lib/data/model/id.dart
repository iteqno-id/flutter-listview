class Id {
  Id({
    required this.name,
    required this.value,
  });

  String name;
  String value;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        name: json["name"],
        value: json["value"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
      };
}
