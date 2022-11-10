import 'package:flutter/material.dart';
import 'ExtraPage.dart';
import 'AboutPage.dart';
import 'ContactPage.dart';
import 'ProjectsPage.dart';
import 'HomePage.dart';

enum Pages { Home, About, Projects, Contact, Extra, too }


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class ProjectsPage extends BasePage {
  const ProjectsPage({super.key, required title}):super(title: title);
  @override
  State<BasePage> createState() => ProjectsPageState();
}

class AboutPage extends BasePage {
  const AboutPage({super.key, required title}): super(title: title);
  @override
  State<BasePage> createState() => AboutPageState();
}

class ContactPage extends BasePage {
  const ContactPage({super.key, required title}):super(title: title);
  @override
  State<BasePage> createState() => ContactPageState();
}

class ExtraPage extends BasePage {
  const ExtraPage({super.key, title}) : super(title: title);
  @override
  State<BasePage> createState() => ExtraPageState();
}

class BasePage extends StatefulWidget {
  const BasePage({super.key, required this.title});
  final String title;
  @override
  State<BasePage> createState() => BasePageState();
}

class BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}


Widget pageSelect(String title) {
  switch (title) {
    case "Projects":
      return ProjectsPage(title: title);
    case "About":
      return AboutPage(title: title);
    case "Contact":
      return ContactPage(title: title);
    case "Extra":
      return ExtraPage(title: title);
    case "Home":
    default:
      return MyHomePage(title: title);
  }
}