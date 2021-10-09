import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:moviequote/models/quote.dart';

class Api{

  static const URL_BASE = "https://movie-quote-api.herokuapp.com/";

  static Future<Quote> getQuote() async{
    String url = '$URL_BASE/v1/quote/';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return Quote.fromMap(jsonResponse);
    }else
      print('Request failed with status: ${response.statusCode}.');
    return Quote.Error();
  }

}