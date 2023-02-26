
import 'package:flutter/material.dart';
import 'package:location/location_sevicess/provider/location_provider.dart';
import 'package:location/map_example/map_example.dart';
import 'package:provider/provider.dart';

class Location_Example extends StatefulWidget {
  const Location_Example({Key? key}) : super(key: key);

  @override
  State<Location_Example> createState() => _Location_ExampleState();
}

class _Location_ExampleState extends State<Location_Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Provider_Location>(builder: (context,value,child){
        return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    value.getCurrentPosition();
                  },
                  child: value.isLoading ? CircularProgressIndicator():
                  Text(
                    "get current device location",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Latitude is : ${(value.position?.latitude)}",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Longitude is: ${value.position?.longitude}",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                ),

                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MapSample()));
                  },
                  child: Text(
                    "Go to Map",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ));
      }),
    );
  }
}
