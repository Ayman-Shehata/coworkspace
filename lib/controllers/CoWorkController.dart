import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/CoWorkModel.dart';
import '../shared/consts.dart';

Future<CoWorkModel> getSingleCoWork() async {
  final response =
  await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    final jsonresponse = json.decode(response.body);
    return CoWorkModel.fromJson(jsonresponse);
  } else {
    throw Exception('Error');
  }
}


Future<List<CoWorkModel>> getAllCoWork() async {
  final response = await http.get(Uri.parse(apiUrl));
  //print(response.body);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => CoWorkModel.fromJson(data)).toList();

  } else {
    throw Exception('Failed to load data');
  }
}