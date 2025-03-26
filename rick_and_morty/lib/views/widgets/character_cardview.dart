import 'package:flutter/material.dart';

class Character_cardview extends StatelessWidget {
  const Character_cardview({
    super.key,
    required this.image,
    required this.name,
    required this.origin,
    required this.status,
    required this.type,
  });
  final String image;
  final String name;
  final String origin;
  final String status;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
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
                    fit: BoxFit.cover,
                    height: 110,
                    width: 110,
                    image,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      _infoWidget(type: 'Köken', value: origin),
                      SizedBox(height: 5),
                      _infoWidget(type: 'Durum', value: '$status - $type'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
        ],
      ),
    );
  }

  Column _infoWidget({required String type, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(type, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
        Text(
          value,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
