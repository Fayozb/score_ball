import 'package:flutter/material.dart';
class BluePage extends StatefulWidget {
  final Function() restore;

  const BluePage({super.key,required this.restore});

  @override
  State<BluePage> createState() => _BluePageState();
}

class _BluePageState extends State<BluePage> {
  int rednumber = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(width: 40,),
        Container(
          alignment: Alignment.center,
          width: 160,
          height: 70,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade400,
                blurRadius: 20,
                spreadRadius: 2,

              ),
            ],
          ),
          child: Text(
            '$rednumber',style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 50),
          ),
        ),
        const SizedBox(height: 45,),
        InkWell(
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
          child: Container(
            alignment: Alignment.center,
            width: 160,
            height: 70,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(

              color: Colors.blue,
            ),
            child: const Text(
              '+',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50),
            ),
          ),
        ),
        const SizedBox(height: 30,),
        InkWell(
          onTap: (){
            setState(() {
              if(rednumber == 0){
              }
              else{
                rednumber--;
              }
            });
          },
          onLongPress: (){
            setState(() {
              rednumber = 0;
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: 160,
            height: 70,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(

              color: Colors.blue,
            ),
            child: const Text(
              '-',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50),
            ),
          ),
        )

      ],
    );
  }
}
