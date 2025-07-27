import 'package:ecommerce_app/widgets/carditem.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;

class Caroussel extends StatelessWidget {
  const Caroussel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    carousel.CarouselSliderController buttonCarouselController =
        carousel.CarouselSliderController();

    return Column(
      children: <Widget>[
        carousel.CarouselSlider(
          carouselController: buttonCarouselController,
          items: [CardItem(), CardItem(), CardItem()],
          options: carousel.CarouselOptions(
            height: 308,
            autoPlay: false,
            enlargeCenterPage: true,
            initialPage: 2,
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () => buttonCarouselController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear),
            child: const Text(
              'See more ->',
              style: TextStyle(
                  color: Color(0xff5956E9),
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}
