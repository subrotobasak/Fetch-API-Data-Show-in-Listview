import 'package:fetch_api_data_show_in_listview/model/model.dart';
import 'package:http/http.dart';

Future<TestDataModel?> getData() async {
  var request = Request('GET', Uri.parse('https://reqres.in/api/users?page=1'));

  StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var _json = await response.stream.bytesToString();
    print(_json);
    var _data = testDataModelFromJson(_json);
    return _data;
  } else {
    print(response.reasonPhrase);
    return null;
  }
}
