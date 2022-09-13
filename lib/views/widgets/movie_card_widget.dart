import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/utils/color_pallete.dart';
import 'package:movie/utils/text_style.dart';
import 'package:movie/views/widgets/rating_widget.dart';

class MovieCardWidget extends StatelessWidget {
  final MovieModel data;
  const MovieCardWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            height: 125,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(data.image)),
                borderRadius: BorderRadius.circular(21)),
          ),
          const SizedBox(width: 20),
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
              ),
              const SizedBox(height: 16),
              RatingWidget(rating: data.rating)
            ],
          )
        ],
      ),
    );
  }
}
