import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/utils/color_pallete.dart';
import 'package:movie/utils/text_style.dart';
import 'package:movie/views/widgets/rating_widget.dart';

class CardCustomWidget extends StatelessWidget {
  final bool isLastCard;
  final MovieModel data;
  const CardCustomWidget(
      {Key? key, this.isLastCard = false, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      margin: isLastCard ? null : const EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(data.image)),
                borderRadius: BorderRadius.circular(21)),
          ),
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: textTitle,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    data.subTitle,
                    style: textSubTitle,
                  )
                ],
              ),
              RatingWidget(rating: data.rating)
            ],
          )
        ],
      ),
    );
  }
}
