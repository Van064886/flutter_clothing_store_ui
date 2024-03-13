import 'package:clothing_store_ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light));

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/p4.jpeg"),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 84, 82, 82), BlendMode.multiply))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Find your unique style",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 11,
              ),
              const Text(
                "A unique fashion style allows to express your personnality, creativity, individuality through your clothing choices.",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => const Home()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.blue),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: MaterialStatePropertyAll(
                        Size(size.width, size.height * .07)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: const Text(
                  "Get started",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
