import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saubol/pages/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.white),
              ),
            ),
            child: BottomAppBar(
              color: Color(0xFF395AD1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home), color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.home), color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.home), color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.home), color: Colors.white,),
                ],
              ),
            ),
          ),

       /* appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            FirebaseAuth.instance.signOut();
          }, icon: Icon(Icons.backspace)),
        ],
      ),*/
      backgroundColor: Color(0xFF395AD1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              Expanded(
                child: Center(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    shrinkWrap: true,
                    children: [
                      CategoryCard(text: 'Симптомы', svgIcon: 'assets/icons/medical.svg' ,),
                      CategoryCard(text: 'Найти врача', svgIcon: 'assets/icons/location.svg',),
                      CategoryCard(text: 'Новости', svgIcon: 'assets/icons/consultation.svg',),
                      CategoryCard(text: 'Моя карточка', svgIcon: 'assets/icons/medical-report.svg',),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
