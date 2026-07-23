import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,
        title: Text("Learning Widget", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Positioned(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                )
            ),
          ],
        ),

      ),

    );
  }
}