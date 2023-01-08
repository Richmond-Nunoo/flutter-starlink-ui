import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:starlink/views/widgets/images_url.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CachedNetworkImage(
            imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(fit: BoxFit.fill, image: imageProvider),
                  ),
                  height: double.infinity,
                  width: double.infinity,
                ),
            errorWidget: (context, url, error) => const Center(
                  child: Icon(Icons.error),
                ),
            placeholder: (context, url) => Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black,
                ),
            imageUrl: imageUrls[0]),
        Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        debugPrint("Login");
                      },
                      icon: const Icon(
                        Icons.person_outline_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        debugPrint("Help");
                      },
                      icon: const Icon(
                        Icons.help_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "STARLINK",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  wordSpacing: 50,
                  letterSpacing: 10,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35, right: 35, top: 10),
              child: Text(
                "High-Speed Internet,available almost anywhere on Earth",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  debugPrint("ORDER STARLINK");
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(4))),
                  child: const Center(
                    child: Text(
                      "ORDER STARLINK",
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
                  debugPrint("START SETUP");
              
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: const Center(
                    child: Text(
                      "START SETUP",
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
