import 'package:listview_widget/data/datasource/remote/http_client.dart';
import 'package:listview_widget/data/model/base_response.dart';

class IteqnoRepository {
  Future<BaseResponse> getData(String path, Map<String, String> query) =>
      HttpClient.get(path, query);
}
