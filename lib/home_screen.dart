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
              width: double.infinity,
              color: Colors.green,

            ),
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://st4.depositphotos.com/1017228/20282/i/450/depositphotos_202829902-stock-photo-close-portrait-smiling-young-man.jpg"),
                    //fit:BoxFit.cover,
                    ),

                  ),
                ),

              ),
            ),
          ],

        ),

      ),

    );
  }
}