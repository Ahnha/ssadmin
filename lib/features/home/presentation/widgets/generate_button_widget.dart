import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/home_controller.dart';

class GenerateButtonWidget extends StatelessWidget {
  const GenerateButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) {
        return ElevatedButton(
          onPressed: controller.generateNewWord,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: const Text(
            'Generate New Word',
            style: TextStyle(fontSize: 16),
          ),
        );
      },
    );
  }
}
