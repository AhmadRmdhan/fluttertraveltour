import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/profile.dart';

class HomeBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 2,
      items: [

        CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xffffffff),
          child: IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileNinePage(),
                    )
                );
              },
              icon: Icon(
                Icons.person_outline,
              )),
        ),
        Icon(Icons.favorite_outline,
            size: 30,
        ),
        Icon(Icons.home,
          size: 30,
          color: Colors.redAccent,
        ),
      ],
    );
  }
}