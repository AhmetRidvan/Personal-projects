import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/models/character_model.dart';
import 'package:rick_and_morty/views/screens/characters_view/characters_view_model.dart';
import 'package:rick_and_morty/views/widgets/character_cardview.dart';

class CharactesrsView extends StatefulWidget {
  const CharactesrsView({super.key});

  @override
  State<CharactesrsView> createState() => _CharactesrsViewState();
}

class _CharactesrsViewState extends State<CharactesrsView> {
  @override
  void initState() {
    context.read<CharactersViewModel>().getCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          search(context),
          Consumer<CharactersViewModel>(
            builder: (context, viewModel, child) {
              if (viewModel.getCharacterModel == null) {
                return CircularProgressIndicator();
              } else {
                return Flexible(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Character_cardview(
                        cModel: viewModel.getCharacterModel!.characters[index],
                      );
                    },
                    itemCount: viewModel.getCharacterModel!.characters.length,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Padding search(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(13),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          border: OutlineInputBorder(borderSide: BorderSide()),
          labelText: 'Karakterde Ara',
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
