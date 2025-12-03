import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String pexelsKey = 'PUT_PEXELS_KEY_HERE';

  Future<List> getCurated(int perPage) async {
    try {
      var url = Uri.parse('https://api.pexels.com/v1/curated?per_page=$perPage');
      var res = await http.get(url, headers: {'Authorization': pexelsKey});
      if (res.statusCode == 200) {
        var data = json.decode(res.body);
        return data['photos'] ?? [];
      }
    } catch (e) {
      print('API error: $e');
    }
    return [];
  }
}
