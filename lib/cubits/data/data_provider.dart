part of 'cubit.dart';

class DataDataProvider {
  static Future<Data> fetch() async {
    try {
      var uri = Uri.parse('http://localhost:8080');
      final request = await http.get(uri);

      return Data.fromJson(request.body);
    } catch (e) {
      throw Exception("Internal Server Error");
    }
  }
}
