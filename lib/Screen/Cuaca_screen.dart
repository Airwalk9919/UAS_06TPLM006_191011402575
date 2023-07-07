import '../provider/cuaca_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {

const HomeScreen({Key? key}): super(key: key);
@override
State<HomeScreen> createState() =>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
    body: Consumer<CuacaProvider>(
      builder: (context, provider, child) {
        return Container(
         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromARGB(255, 65, 89, 224),
                      Color.fromARGB(255, 83, 92, 215),
                      Color.fromARGB(255, 86, 88, 177),
                      Color.fromARGB(255, 73, 86, 255),
                      Color.fromARGB(255, 0, 4, 255),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: provider.cityNameText,
                decoration: InputDecoration(
                hintText: "Masukkan Nama Kota", 
                labelText: "Nama Kota",
                filled: true, //<-- SEE HERE
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                            width: 3, color: Colors.redAccent
                            ),
                    )
                ),
              ),
          TextButton(
            onPressed: () {
              provider.showWeatherData();
          },
            child: Text("Tampilkan Data Cuaca"),
            style: TextButton.styleFrom(
              primary: Colors.white, // Text Color
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              provider?.Cuacamodel?.name ?? "Waiting Data",
              style: TextStyle(
              fontSize: 65,
              color: Colors.white ,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text("${provider.Cuacamodel.main?.temp} °C",
              style: TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),),
          Text(provider.Cuacamodel.weather?.first?.main ?? "Waiting data",
              style: TextStyle(
              fontSize: 30,
              color: Colors.white ,
              fontWeight: FontWeight.bold,
              ),),
              ],
              
            ),
            )
          );
        },
      ),
    );
  }
}