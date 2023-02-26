

import 'package:flutter/material.dart';
import 'package:location/location_sevicess/location_example.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
          () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Location_Example())),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_location,size: 100,color: Colors.red,),
            SizedBox(
              height: 20,
            ),

            Text("Place App",style: TextStyle(color: Colors.green,fontSize: 25),),

          ],
        ),
      ),
    );
  }
}
