import 'package:flutter/material.dart';
class PurplePage extends StatefulWidget {

  const PurplePage({super.key,});

  @override
  State<PurplePage> createState() => _PurplePageState();
}

class _PurplePageState extends State<PurplePage> {
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

              color: Colors.purple,
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

              color: Colors.purple,
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
