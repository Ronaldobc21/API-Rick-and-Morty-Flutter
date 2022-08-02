import 'package:apirickandmorty/home/models/story.dart';
import 'package:apirickandmorty/home/screens/widgets/home_bottom.dart';
import 'package:apirickandmorty/home/screens/widgets/home_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.icon}) : super(key: key);
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Api Rick and Morty',
        ),
       actions: const [
         HomeBottom(icon: Icon(Icons.exit_to_app),),
       HomeBottom(icon: Icon(Icons.notifications),),
       ],
      ),
      body: Container(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: HomeCard(
                story: StoryDTO(
                    name: 'Rick Sanchez',
                    species: 'Human',
                    status: 'Alive',
                    image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
                ),
            ),
          ),
      ),
    );
  }
}
