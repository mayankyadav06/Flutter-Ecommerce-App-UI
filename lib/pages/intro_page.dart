import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Welcome Page
    return Scaffold(

      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("assets/images/nike_logo.png"),
              ),
              const Text(
                "Just Do It",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "WINNING ISN'T COMFORTABLE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              const Text(
                "If you don't hate running a little, you don't love running enough.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  fixedSize: WidgetStatePropertyAll(
                    Size(250.0, 50.0),
                  ),
                  overlayColor: WidgetStatePropertyAll(Colors.white24),
                 ),
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomePage();
                      },
                    ),
                  )
                },
                child: const Text(
                  "Shop Nike",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
