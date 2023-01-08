import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:starlink/views/widgets/images_url.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

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
            imageUrl: imageUrls[2]),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "NO CONTRACTS, 30-DAY TRIAL",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 35, top: 10),
                  child: Text(
                    "Try Starlink service for 30 days.If you're not satisfied,return the hardware for full refund",
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
                  debugPrint("ORDER NOW");
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: const Center(
                    child: Text(
                      "ORDER NOW",
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
