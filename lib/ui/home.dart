import 'package:flutter/material.dart';

import '../widget/gradient_text.dart';

class HomePage extends StatelessWidget {
  static const routeName  = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orbus Infinity AI ChatBot", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        //get colors from hex
                      //  Color(0xFFF69170), Color(0xFF7D96E6),
                        Color(0xfffbd11f),Color(0xff004996),
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0, left: 16.0),
                          child: (
                              Text("Bienvenue ! Retrouvez", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: (
                              Text("Tout sur le GUPE", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0),
                          child: (
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/chat');
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                                    child: GradientText(
                                      "Ask Now",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      gradient: LinearGradient(
                                          colors: [Color(0xfffbd11f),Color(0xff004996),
                                           // Color(0xFFF69170), Color(0xFF7D96E6),
                                          ]
                                      ),
                                    ),
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("asset/images/icon.png"), fit: BoxFit.contain,scale: 15),
                        ),
                        child: SizedBox(height: 150, width: 100,),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text("Recent Chats", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
