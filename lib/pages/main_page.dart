import 'package:movie_ui/theme.dart';
import 'package:movie_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return const HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),],
      ),
    );
  }
}
