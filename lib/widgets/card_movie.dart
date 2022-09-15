
import 'package:flutter/material.dart';

import 'package:movie_ui/theme.dart';

class CardMovie extends StatelessWidget {
  final String title;
  final String genre;
  final String imageUrl;
  final int rating;

  const CardMovie({
    Key? key,
    required this.title,
    required this.genre,
    required this.imageUrl,
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 300,
              height: 279,
              margin: EdgeInsets.only(left: defaultMargin),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 207,
                    margin: EdgeInsets.only(bottom: 19),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageUrl))),
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: purpleTextStyle.copyWith(
                                  fontSize: 20, fontWeight: extraBold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              genre,
                              style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/star_active.png'))
                              ),
                            ),
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/star_active.png'))
                              ),
                            ),
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/star_active.png'))
                              ),
                            ),
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/star_active.png'))
                              ),
                            ),
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/star_active.png'))
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
