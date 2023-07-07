// ignore: depend_on_referenced_packages
import '../Model/cuacamodel.dart';
import 'package:dio/dio.dart';
class cuacaService {
final dio = Dio();
Future<CuacaModel> getCurrentWeather(String cityName) async {
final response = await dio.get(
'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=d06af05d93dcb1fce83a9391e5f5b2aa');
print(response.requestOptions.path);
return CuacaModel.fromJson(response.data);
}
}