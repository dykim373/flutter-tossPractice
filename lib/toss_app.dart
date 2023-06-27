import 'package:flutter/material.dart';

class TossApp extends StatefulWidget {
  const TossApp({super.key});

  @override
  State<TossApp> createState() => _TossAppState();
}

class _TossAppState extends State<TossApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(child: Text('1')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(child: Text('2')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(child: Text('3')),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(child: Text('4')),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: const Center(child: Text('nav')),
      ),
    );
  }
}
