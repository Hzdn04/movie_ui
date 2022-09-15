import 'package:movie_ui/pages/search_page.dart';
import 'package:movie_ui/theme.dart';
import 'package:movie_ui/widgets/card_movie.dart';
import 'package:movie_ui/widgets/tile_movie.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: 24, right: defaultMargin, top: 29),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moviez',
                    style:
                        purpleTextStyle.copyWith(fontSize: 28, fontWeight: extraBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Watch much easer',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  SearchPage()));
              },
              child: Container(
                padding: const EdgeInsets.only(left: 22, top: 11, bottom: 12, right: 12),
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/search.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularMovie() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardMovie(
                title: 'John Wick 4',
                genre: 'Action, Crime',
                imageUrl: 'assets/john_big.png',
                rating: 5,
              ),
              CardMovie(
                title: 'Bohemian',
                genre: 'Documentary',
                imageUrl: 'assets/bohe_big.png',
                rating: 5,
              ),
              CardMovie(
                title: 'The Dark II',
                genre: 'Horor',
                imageUrl: 'assets/dark.png',
                rating: 4,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style:
                  purpleTextStyle.copyWith(fontSize: 24, fontWeight: extraBold),
            ),
            const TileMovie(
              name: 'Mulan Session',
              genre: 'History, War',
              imageUrl: 'assets/mulan.png',
              rating: 5.0,
            ),
            const TileMovie(
              name: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              imageUrl: 'assets/beauty.png',
              rating: 5.0,
            ),
            const TileMovie(
              name: 'The Dark Knight',
              genre: 'Heroes',
              imageUrl: 'assets/knight.png',
              rating: 5.0,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularMovie(), newDestination()],
    );
  }
}
