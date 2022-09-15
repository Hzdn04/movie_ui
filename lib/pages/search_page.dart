import 'package:flutter/material.dart';
import 'package:movie_ui/pages/main_page.dart';
import 'package:movie_ui/theme.dart';
import 'package:movie_ui/widgets/tile_movie.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerField() {
      return Container(
          height: 55,
          margin: EdgeInsets.only(left: 24, right: defaultMargin, top: 29),
          child: TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: kPrimaryColor,
              ),
              border: InputBorder.none,
              hintText: 'Search Movie',
            ),
          ));
    }

    Widget searchResult() {
      return Container(
        margin: EdgeInsets.only(
            top: 20, left: defaultMargin, right: defaultMargin, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search Result (3)',
              style:
                  purpleTextStyle.copyWith(fontSize: 20, fontWeight: extraBold),
            ),
            const TileMovie(
              name: 'The Dark II',
              genre: 'Horror',
              imageUrl: 'assets/dark.png',
              rating: 5.0,
            ),
            const TileMovie(
              name: 'The Dark Knight',
              genre: 'Heroes',
              imageUrl: 'assets/knight.png',
              rating: 5.0,
            ),
            const TileMovie(
              name: 'The Dark Tower',
              genre: 'Action',
              imageUrl: 'assets/tower.png',
              rating: 5.0,
            ),
          ],
        ),
      );
    }

    Widget bottomSuggest() {
      return Container(
        width: 220,
        height: 50,
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  MainPage()));
          },
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 13),
            child: Text(
              'Suggest Movie',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [headerField(), searchResult(), bottomSuggest(), SizedBox(height: 50,)],
      ),
    );
  }
}



//                 padding: const EdgeInsets.only(
//                     left: 22, top: 11, bottom: 12, right: 12),
//                 width: 22,
//                 height: 22,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage('assets/search.png'),
//                   ),
//                 ),
//               ),