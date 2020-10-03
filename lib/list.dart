import 'package:flutter/material.dart';
import 'package:travel/detailpage.dart';

class SamList extends StatefulWidget {
  SamList({Key key, this.image}) : super(key: key);

  final String image;

  @override
  _SamListState createState() => _SamListState();
}

class _SamListState extends State<SamList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailPage()))
      },
      child: Stack(
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
            child: Center(child: Text('Kelingkung Beach',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),),
          ),
          Positioned(
            bottom:35,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size:15,),
                  Icon(Icons.star, color: Colors.yellow, size: 15,),
                  Icon(Icons.star, color: Colors.yellow, size: 15,),
                  Icon(Icons.star, color: Colors.yellow, size: 15,),
                  Icon(Icons.star,color: Colors.white, size: 15,),
                ],
              ),
            ),
          ),

          Positioned(
            bottom:15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white, size:15,),
                  Text("dang hill station",style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      ),),
                ],
              ),
            ),
          ),

        ],


      ),
    );
  }
}
