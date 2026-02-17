import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // PUSH
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SecondScreen()),
                  );
                },
                child: const Text("Push → Second"),
              ),

              // PUSH NAMED
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text("PushNamed → Second"),
              ),

              // PUSH REPLACEMENT
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const SecondScreen()),
                  );
                },
                child: const Text("PushReplacement → Second"),
              ),

              // PUSH AND REMOVE UNTIL
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const SecondScreen()),
                    (route) => false,
                  );
                },
                child: const Text("PushAndRemoveUntil → Second"),
              ),

              // PUSH NAMED AND REMOVE UNTIL
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/second',
                    (route) => false,
                  );
                },
                child: const Text("PushNamedAndRemoveUntil → Second"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}