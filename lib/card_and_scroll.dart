import 'package:flutter/material.dart';

class CardAndScroll extends StatefulWidget {
  @override
  State<CardAndScroll> createState() => _CardAndScrollState();
}

class _CardAndScrollState extends State<CardAndScroll> {

  bool isFavourate = false;
  bool buttonFav = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListTile(
              leading:CircleAvatar(
                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/136964133?s=400&u=24bb6191b58599849670c974d455834fe5057cd1&v=4"),
              ),
              title: Text("Dipto Paul"),
              subtitle: Text("Flutter Developer"),
              trailing: Icon(isFavourate ? Icons.favorite_border : Icons.favorite),
              onTap: (){
                setState(() { // setState eita update kore prottekbar app
                  isFavourate = !isFavourate;
                });
              },
            ),
          ),

          Center(
            child: TextButton( // Elevated button, textButton,FilledButton,
              child: Icon(Icons.favorite, color: buttonFav ? Colors.red : Colors.grey),

              onPressed: () { setState(() { // setState eita update kore prottekbar app
                buttonFav = !buttonFav;
              }); },
            ),
          ),

          SizedBox(height: 20,),

          Expanded( // joto tuku baki thakbe tototuku nibe
            flex: 1,
            child: GridView.count(
                crossAxisCount: 3,
              childAspectRatio: 1.0,
              children: [
                Container(height: 100,width:100, color:Colors.red,),
                Container(height: 100,width:100, color:Colors.blueAccent,),
                Container(height: 100,width:100, color:Colors.orange,),
                Container(height: 100,width:100, color:Colors.green,),
                Container(height: 100,width:100, color:Colors.amber,),
                Container(height: 100,width:100, color:Colors.pink,),
              ],
            )
          ),
          SizedBox(height: 10),
          Flexible( // jototuku jayga lagbe tototukui nibe
            flex:1,
              child: GridView.count(
                crossAxisCount: 3,childAspectRatio: 1.0,
                children: [
                  Container(height: 100,width:100, color:Colors.red,),
                  Container(height: 100,width:100, color:Colors.blueAccent,),
                  Container(height: 100,width:100, color:Colors.orange,),
                ],
              )
          )

        ],

      ),

    );
  }
}
