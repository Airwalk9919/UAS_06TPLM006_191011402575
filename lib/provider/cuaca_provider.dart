import '../Model/cuacamodel.dart' show CuacaModel;
import 'package:flutter/cupertino.dart';
import '../services/cuaca_sevices.dart';


class CuacaProvider extends ChangeNotifier {
TextEditingController cityNameText = TextEditingController(); 
cuacaService cuacaservice = cuacaService();
CuacaModel Cuacamodel = CuacaModel();
showWeatherData() async {
Cuacamodel = await cuacaservice.getCurrentWeather (cityNameText.text); 
notifyListeners();
}
}