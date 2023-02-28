// ignore_for_file: library_private_types_in_public_api, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'story.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();
// ignore: todo
//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

// ignore: todo
//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: todo
        //TODO: Step 1 - Add background.png to this Container as a background image.
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('images/background.png'))),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        // ignore: prefer_const_constructors
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    // ignore: todo
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    // ignore: todo
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    // ignore: todo
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice1(),
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                // ignore: todo
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                // ignore: todo
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      // ignore: todo
                      //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      // ignore: todo
                      //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                      storyBrain.getChoice2(),
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.