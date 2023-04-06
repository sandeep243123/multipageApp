 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipage/main.dart';

class newPage extends StatelessWidget{
  const newPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('New page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Click to new Page',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage(),
            )
            );
          }, child: const Text('next')),

        ],
      )
    );
  }

 }