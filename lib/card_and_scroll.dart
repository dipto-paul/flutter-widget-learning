import 'package:flutter/material.dart';

class CardAndScroll extends StatefulWidget {
  @override
  State<CardAndScroll> createState() => _CardAndScrollState();
}

class _CardAndScrollState extends State<CardAndScroll> {

  bool isFavourate = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Card(
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
    );
  }
}
