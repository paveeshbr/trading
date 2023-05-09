import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {

  final pageTwoKey = GlobalKey<_PageTwoState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageTwo(key: pageTwoKey,onPressed: () {
        setState(() {
          
        });
      },),
    );
  }
}

class PageTwo extends StatefulWidget {
  const PageTwo({super.key, required this.onPressed});

final Function() onPressed;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: 
    (){
      widget.onPressed();
    }, child: const Text("Button"));
  }
}