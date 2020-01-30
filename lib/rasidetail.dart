import 'package:flutter/material.dart';
import 'rasi.dart';

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 25,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.13,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  //Text(
                    //pokemon.name,
                   // style:
                     //   TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                 // ),
                  Text("${pokemon.height}"),
                  //Text("${pokemon.weight}"),
                  Text("ราคา: 100"),
                  Text("ขนาดสินค้า : XSS"),
                  Text("สีสินค้า : สีแดง"),
                   //Text("จำนวนสินค้าที่มี"+ "${pokemon.nextEvolution}"),
                  Text("${pokemon.weight}"),
                  Text("จำนวนสินค้าที่ต้องการซื้อ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
               TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder()
  )
),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.weaknesses
                            .map((n) => FilterChip(
                                  backgroundColor: Colors.red,
                                  label: Text(
                                    "สั่งซื้อสินค้า",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  
                                  onSelected: (b) {},
                                ))
                                
                            .toList(),
                  )
                ],
              ),
            ),
          ),
      
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  height: 190.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
                )),
          )
          
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange,
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    );
  }
}