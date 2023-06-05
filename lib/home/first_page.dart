import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soler_system/home/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/solar system.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
                      return const HomePage();
                    }));
                  },
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100,
                    ),
                    child: const Center(
                      child: Text(
                        '''explore the solar system''',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
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
