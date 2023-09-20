import 'package:flutter/material.dart';
import 'package:game_number/green_score.dart';
import 'package:game_number/purple_score.dart';
import 'package:game_number/red_score.dart';
import 'package:provider/provider.dart';
import 'app_provider.dart';
import 'blue_score.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Simple score keeper'),
        backgroundColor: Colors.grey,
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: 'uz',
                child: Text('O\'zbekcha'),
              ),
            ],
            onSelected: (value) {
              provider;

            },
          ),
        ],
      ),
      body: const Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 20,),
              RedPage(),
              SizedBox(width: 40,),
              BluePage(restore: ,),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(width: 20,),
              GreenPage(),
              SizedBox(width: 40,),
              PurplePage()
            ],
          )


        ],
      ),
    );
  }
}
