import 'package:flutter/material.dart';
import 'package:movie/utils/color_pallete.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  const RatingWidget({ Key? key, required this.rating }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Icon> widgetRating = List.generate(
        5,
        (i) => Icon(
              Icons.star,
              color: i > (rating - 1) ? ColorPallete().greyColor : ColorPallete().orangeColor,
              size: 18,
            ));
    return Row(
      children: widgetRating,
    );
  }
}