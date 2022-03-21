class Timezone {
  Timezone({
    required this.offset,
    required this.description,
  });

  String offset;
  String description;

  factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        offset: json["offset"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "offset": offset,
        "description": description,
      };
}
