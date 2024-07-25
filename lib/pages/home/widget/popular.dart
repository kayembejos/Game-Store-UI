import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/detail.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.purple,
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => GestureDetector(
            onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => DetailPage(game: games[index])),
                ))),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: ClipRect(
                    child: Hero(
                        tag: games[index].name,
                        child: Image.asset(games[index].bgImage)),
                  )),
            ))),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: games.length,
      ),
    );
  }
}
