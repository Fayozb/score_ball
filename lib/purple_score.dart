import 'package:flutter/material.dart';
class PurplePage extends StatefulWidget {

  PurplePage({super.key,});

  @override
  State<PurplePage> createState() => _PurplePageState();
}

class _PurplePageState extends State<PurplePage> {
  int rednumber = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(width: 40,),
        Container(
          alignment: Alignment.center,
          width: 160,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              color: Colors.purple,
            boxShadow: [
              BoxShadow(
                  color: Colors.purple.shade400,
                blurRadius: 20,
                spreadRadius: 2,

              ),
            ],
          ),
          child: Text(
            '${rednumber}',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50),
          ),
        ),
        SizedBox(height: 45,),
        Container(
          alignment: Alignment.center,
          width: 160,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(

              color: Colors.purple
          ),
          child: InkWell(

            onTap: (){
              setState(() {
                rednumber++;
              });
            },
            onLongPress: (){
              setState(() {
                rednumber = 0;
              });
            },

            child: Text(
              '+',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50),
            ),
          ),
        ),
        SizedBox(height: 30,),
        Container(
          alignment: Alignment.center,
          width: 160,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(

            color: Colors.purple,
          ),
          child: InkWell(

            onTap: (){
              setState(() {
                rednumber--;
              });
            },
            onLongPress: (){
              setState(() {
                rednumber = 0;
              });
            },
            child: Text(
              '-',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50),
            ),
          ),
        )

      ],
    );
  }
}
