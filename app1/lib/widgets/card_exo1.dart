import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Card_Exo1 extends StatelessWidget {
  const Card_Exo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 500,
        height: 200,
        child: Card(
          color: Colors.white,
          shadowColor: Colors.black,
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'DUJARDIN Jean',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    'Cinéma - comédien',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Chip(
                  backgroundColor: Colors.amber.withOpacity(0.2),
                  label: const Text(
                    'Soumis',
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
