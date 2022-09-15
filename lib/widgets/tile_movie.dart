import 'package:flutter/material.dart';
import 'package:movie_ui/theme.dart';

class TileMovie extends StatelessWidget {
  final String name;
  final String genre;
  final String imageUrl;
  final double rating;

  const TileMovie(
      {Key? key,
      required this.name,
      required this.genre,
      required this.imageUrl,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 127,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 127,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imageUrl))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: purpleTextStyle.copyWith(
                        fontSize: 20, fontWeight: bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    genre,
                    style:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star_active.png'))),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star_active.png'))),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star_active.png'))),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star_active.png'))),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star.png'))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
