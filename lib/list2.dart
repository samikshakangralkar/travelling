import 'package:flutter/material.dart';

class SamListt extends StatefulWidget {
  SamListt({Key key, this.image}) : super(key: key);

  final String image;

  @override
  _SamListtState createState() => _SamListtState();
}

class _SamListtState extends State<SamListt> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: Center(child: Text('Yogkraya',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          ),
        ),
        Positioned(
          bottom:35,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("100\'+ Destinations",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),)
              ],
            ),
          ),
        ),


      ],


    );
  }
}
