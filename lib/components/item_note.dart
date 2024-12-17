import 'package:flutter/material.dart';
import 'package:mobile_4/pages/note_page.dart';
import 'package:mobile_4/model/note.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key, required this.flower});

  final Flower flower;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NotePage(flower: flower),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(flower.image),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    flower.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotePage(flower: flower)
                        )
                    );
                  },
                      child: const Text('Подробнее')
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
