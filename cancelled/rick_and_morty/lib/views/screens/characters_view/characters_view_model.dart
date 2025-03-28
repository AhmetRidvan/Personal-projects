import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/getIt.dart';
import 'package:rick_and_morty/models/character_model.dart';
import 'package:rick_and_morty/services/api_service.dart';

class CharactersViewModel extends ChangeNotifier {
  final _apiService = locator<ApiService>();

  CharactersModel? _charactersModel;

  CharactersModel? get getCharacterModel {
    return _charactersModel;
  }

  void getCharacters() async {
    _charactersModel = await _apiService.getCharacters();
    notifyListeners();
    print("here!");
  }
}
