import 'package:flutter/material.dart';
import 'pricing_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IT Service Pricing',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PricingPage(),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layanan IT',
        ),
      ),
      body: Center(
        child: PricingCard(),
      ),
    );
  }
}