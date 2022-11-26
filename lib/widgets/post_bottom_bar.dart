import 'package:flutter/material.dart';

import '../screens/payment.dart';

class PostBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""
                        "France",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text("4.5", style: TextStyle(fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),


                Text("France is one of the oldest nations on Earth and the most ethnically diverse country in Europe. "
                    "These deep and broad influences have made France a world leader throughout history in nearly all aspects of culture, "
                    "including cuisine, wine-making, politics, philosophy, music, art, film, fashion, literature, and sports.",
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                  textAlign: TextAlign.justify,
                ),

                SizedBox(height: 20),
                Row(children: [
                  Padding(padding: EdgeInsets.only(right: 5),
                    child: Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "images/city5.jpg",
                          fit: BoxFit.cover,
                          width: 100,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 5),
                    child: Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "images/city4.jpg",
                          fit: BoxFit.cover,
                          width: 100,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 80,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("images/city6.jpg"),
                        fit: BoxFit.cover,
                        opacity: 0.4,
                      ),
                    ),
                    child: Text("10+", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                  ),
                ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Icon(Icons.bookmark_outline, size: 30),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: ElevatedButton(
                          child: Text('Book Now'),
                          onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  CartOnePage()),
                              );
                            },

                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.red),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 25)),
                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}