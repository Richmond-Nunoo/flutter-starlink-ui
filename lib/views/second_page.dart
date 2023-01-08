import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/image4.jpg',
              ),
            ),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "EASY SELF-INSTALL",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 35, top: 10),
                  child: Text(
                    "Find a clear view of sky and plug it in.Get online in minutes",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  print("PREVIEW INSTALL");
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(4))),
                  child: const Center(
                    child: Text(
                      "PREVIEW INSTALL",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  print("FIND A LOCATION");
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: const Center(
                    child: Text(
                      "FIND A LOCATION",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
