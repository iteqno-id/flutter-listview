import 'info.dart';
import 'result.dart';

class BaseResponse {
  BaseResponse({
    required this.results,
    this.info,
  });

  List<Result> results;
  Info? info;

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "info": info?.toJson(),
      };
}
