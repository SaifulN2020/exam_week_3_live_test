import 'package:flutter/material.dart';

class WeatherInfoDisplay extends StatefulWidget {
  const WeatherInfoDisplay({Key? key}) : super(key: key);


  @override
  State<WeatherInfoDisplay> createState() => _WeatherInfoDisplayState();
}

class _WeatherInfoDisplayState extends State<WeatherInfoDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather Info App",),),
      body: Container(
        child: Expanded(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 1,
                  itemBuilder:(context,index){
                    return const ListTile(
                      title: Text("City : New York",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      subtitle: Column(
                        children: [
                          Text("Tempature : 40"),
                          Text("Condition :"),
                          Text("Huminity :"),
                          Text("WindSpeed")
                        ],
                      ),

                    );
                  } )
            ],

          ),
        ),
      ),
    );
  }
}
