import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Map data = {};


  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
  
    // ignore: avoid_print
    print(data);


    String bgImage = data ['isDaytime'] ? 'images.png': 'download.png';
    Color bgShade = (data['isDaytime'] ? Colors.blue: Colors.indigo);



    return  Scaffold(
      backgroundColor: bgShade,
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover),
          ),
          child: Column(
           children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              }, 
              icon: const Icon(Icons.edit_location),
              label: const Text('edit location'),),
        
              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: const TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),),
                ],
              ),
              const SizedBox(height: 20.0,),
              Text(
                data['time'],
                style: const TextStyle(
                  fontSize: 70.0,
               ),),
           ], 
          ),
        ),),
    );
  }
}