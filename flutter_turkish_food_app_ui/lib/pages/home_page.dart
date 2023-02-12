import 'package:flutter/material.dart';
import 'package:flutter_turkish_food_app_ui/pages/first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      child: Image.asset(
                        'assets/png/kp.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 250,
                    child: Image.asset('assets/png/k.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 225,
                    child: Image.asset(
                      'assets/png/p.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          //--------------------------------------------------------------------
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text(
                      "The Fastest in Delivery Food",
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: const Color.fromARGB(255, 244, 244, 244),
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                                fontFamily: 'SecularOne',
                              ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Our job is to filling your tummy with delicious food and fast delivery",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: const Color.fromARGB(255, 184, 184, 184),
                              fontFamily: 'SecularOne',
                              fontSize: 16,
                            ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const FirstPage();
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 240, 55, 55),
                              Color.fromARGB(255, 241, 19, 19)
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Starred',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'SecularOne',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}