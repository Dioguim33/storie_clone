import 'package:flutter/material.dart';
import 'package:stories_clone/pages/status_view.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StatusView()));
          },
          child: const Text('Status')
        ),
      ),
    );
  }
}