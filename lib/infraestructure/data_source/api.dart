//import 'dart:math';

import 'package:dio/dio.dart';
import 'package:peticion_hht/infraestructure/models/person.dart';

class ApiService {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://rickandmortyapi.com/api',
    ),
  );

//refreshh randomnumber
  // Future<Person> getCharacter() async {
  //   Random random = Random();

  //   int randomNumber = random.nextInt(42);

  //   final response = await dio.get('/character', queryParameters: {
  //     'page': randomNumber,
  //   });
  //   return Person.fromJson(response.data);
  // }

  Future<Person> getCharacter({int page = 1}) async {
    //Random random = Random();
    //int randomNumber = random.nextInt(42);

    final response = await dio.get('/character', queryParameters: {
      'page': page,
    });
    return Person.fromJson(response.data);
  }
}
