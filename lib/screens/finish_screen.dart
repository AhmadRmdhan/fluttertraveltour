import 'package:flutter/material.dart';
import 'package:travel_tour/screens/home_screen.dart';

class finish extends StatefulWidget {
  const finish({Key? key}) : super(key: key);

  @override
  State<finish> createState() => _finishState();
}

class _finishState extends State<finish> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: ElevatedButton(
        child: Text(
            'Your Transaction Has Been Processed, Please Wait We Will Send Your Ticket Trough Your Email, Thank You '),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },

        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 15, horizontal: 25)),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
      ),
    );

  }


  }

