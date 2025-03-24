import 'package:flutter/material.dart';

class Character_cardview extends StatelessWidget {
  const Character_cardview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://rickandmortyapi.com/api/character/avatar/734.jpeg',
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rick sanchez",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Köken",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                  Text("Earth - (C137)"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
