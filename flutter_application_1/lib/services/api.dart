import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/person_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const String baseUrl = 'http://192.168.43.74/api/';

  //post api
  static addPerson(Map pdata) async {
    print(pdata);
    var url = Uri.parse(baseUrl + "add_person");
    try {
      final res = await http.post(url, body: pdata);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print('Failed to upload data');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //get api
  static getPerson() async {
    List<Person> person = [];
    var url = Uri.parse(baseUrl + "get_person");
    try {
      final res = await http.get(Uri.parse("uri"));
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        print(data);
        data['person']?.forEach((value) => {
              person.add(Person(
                  name: value['pname'],
                  mobile: value['pmobile'],
                  age: value['page']))
            });
      } else {
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
