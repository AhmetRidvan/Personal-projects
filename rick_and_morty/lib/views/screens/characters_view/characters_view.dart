import 'package:flutter/material.dart';
import 'package:rick_and_morty/views/widgets/character_cardview.dart';

class CharactesrsView extends StatelessWidget {
  const CharactesrsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [search(context), Character_cardview()]),
    );
  }

  TextField search(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        border: OutlineInputBorder(borderSide: BorderSide()),
        labelText: 'Karakterde Ara',
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
