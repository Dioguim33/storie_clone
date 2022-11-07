import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  //final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();

    List<StoryItem> storyItem = [
      StoryItem.text(title: "Olá, essa nova função chama-se stories igual a do WhatsApp", backgroundColor: Colors.green),
      StoryItem.text(title: "Aprovado?", backgroundColor: Colors.green),
    ];

    return Scaffold(
      body: StoryView(
        storyItems: storyItem,
        controller: controller,
        repeat: false,
        inline: true,
        onComplete: (){
          Navigator.of(context).pop();
        },
      )
      );
  }
}