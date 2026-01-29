import 'package:ecommerce_app/screens/message_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        //appbar
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 200, 181, 255),
            label: Text(
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
              "Search",
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
        centerTitle: true,

        //notif
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.message_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MessageScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
