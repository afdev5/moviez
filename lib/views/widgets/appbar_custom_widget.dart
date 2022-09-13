import 'package:flutter/material.dart';
import 'package:movie/utils/color_pallete.dart';
import 'package:movie/utils/text_style.dart';
import 'package:movie/views/screens/search_screen.dart';

class AppbarCustomWidget extends StatelessWidget {
  const AppbarCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Title
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Moviez',
                style: textCustom.copyWith(
                    fontSize: 28, fontWeight: FontWeight.w500)),
            const SizedBox(height: 4),
            Text(
              'Watch much easier',
              style: textSubTitle,
            )
          ],
        ),
        //Search
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen()));
          },
          icon: const Icon(Icons.search),
          color: ColorPallete().primaryColor,
          iconSize: 28,
        )
      ],
    );
  }
}
