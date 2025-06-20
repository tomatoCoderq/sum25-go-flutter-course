import 'package:flutter/material.dart';
import 'package:frontend/counter_app.dart';
import 'package:frontend/profile_card.dart';
import 'package:frontend/registration_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 01 Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Lab 01 Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Profile'),
              Tab(text: 'Counter'),
              Tab(text: 'Register'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                // TODO: change to ProfileCard
                child: SizedBox.shrink(),
              ),
            ),
            const SizedBox(height: 8),
            const ProfileCard(
              name: 'John Doe',
              email: 'john@example.com',
              age: 30,
              avatarUrl:
                  'https://t.me/i/userpic/320/L0ep1yvhyFBLGN_NIG-EgMts7voEHfvNlfRW3nKCaOc.jpg',
            ),
            ElevatedButton(
              child: const Text('Counter'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterApp()),
                );
              },
            ),

            const SizedBox(height: 24),
            const Text(
              'Counter App Example',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // const CounterApp(),
            const SizedBox(height: 24),
            const Text(
              'Registration Form Example',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const RegistrationForm(),
          ],
        ),
      ),
    );
  }
}
