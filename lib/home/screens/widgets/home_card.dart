import 'package:apirickandmorty/home/models/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeCard extends StatelessWidget {
  final StoryDTO story;
  const HomeCard({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),

      ),

      child: Row(
        children: [
          ClipOval(
              child: Image.network(story.image,
              fit: BoxFit.fill,
              ),
            ),
          Container(
            child: buildingsStoryInformation(),
          ),
        ],
      ),
    );
  }

  Widget buildingsStoryInformation(){
    return Column(
      children: [
        Text(story.name),
        Text(story.status),
        Text(story.species),
      ],
    );
  }
}
