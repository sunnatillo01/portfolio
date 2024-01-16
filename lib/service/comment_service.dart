import 'package:http/http.dart' as http;
import 'package:portfolio_tiin_web/service/api_state.dart';


class SendCommentService {
  static Future<ApiState> sendToTelegramm(String txt, String? botLink) async {
    try {
      String message = await itemToString(txt);
      Uri url = Uri.parse("$botLink$message");

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        return Success(
          200,
          response.body,
        );
      }
      return Failure(101, response.body);
    } catch (err) {
      return Failure(100, err);
    }
  }

  static Future<String> itemToString(
    String txt,
  ) async {
    final String logString = """
<b>${DateTime.now().toString().substring(0, 19)}</b> 
<b>Message:</b> ${_r(txt)}
""";

    return logString;
  }

  static String _r(String? v) {
    return v?.replaceAll("<", "^").replaceAll("&", "^") ?? "-";
  }
}
