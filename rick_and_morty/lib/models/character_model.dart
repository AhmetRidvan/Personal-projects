class CharactersModel {
  final CharacterInfo info;
  final List<CharacterModel> character;

  CharactersModel({required this.info, required this.character});

  factory CharactersModel.fromJson(Map<String, dynamic> js) {
    final info = CharacterInfo.fromJson(js['info']); 
    final characters = 
        (js['results'] as List).map((e) { 
          return CharacterModel.fromJson(e); 
        }).toList(); 

    return CharactersModel(info: info, character: characters); 
  }
}

class CharacterInfo {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  CharacterInfo({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory CharacterInfo.fromJson(Map<String, dynamic> js) {
    return CharacterInfo(
      count: js['count'],
      pages: js['pages'],
      next: js['next'],
      prev: js['prev'],
    );
  }
}

class CharacterModel {
  final int id;
  final String name;
  final String status;
  final String gender;
  final String image;
  final Location location;
  final Origin origin;
  final List<String> episode;

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.gender,
    required this.image,
    required this.location,
    required this.origin,
    required this.episode,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> js) {
    return CharacterModel(
      id: js['id'],
      name: js['name'],
      status: js['status'],
      gender: js['gender'],
      image: js['image'],
      location: Location(
        name: js['location']['name'],
        url: js['location']['url'],
      ),
      origin: Origin(name: js['origin']['name'], url: js['origin']['url']),
      episode: js['episode'],
    );
  }
}

class Location {
  final String name;
  final String url;

  Location({required this.name, required this.url});
}

class Origin {
  final String name;
  final String url;

  Origin({required this.name, required this.url});
}
