import 'package:flutter/material.dart';

import 'SkyMachineProject.dart';

enum Projects {SkyMachine, TwoGames, CORE, Heist, Animations, Ghibli}

class BaseProject extends StatefulWidget {
  const BaseProject({super.key, required this.title});
  final String title;
  @override
  State<BaseProject> createState() => BaseProjectState();
}

class SkyMachineProject extends BaseProject{
  const SkyMachineProject({super.key,title}):super(title:title);

  @override
  State<BaseProject> createState() => SkyMachineProjectState();
}

class BaseProjectState extends State<BaseProject>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

}
Widget projectSelect(String title){
  switch (title) {
    case "SkyMachine":
    default:
      return SkyMachineProject(title:title);

  }
}