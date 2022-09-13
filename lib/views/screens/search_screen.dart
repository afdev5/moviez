import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/utils/color_pallete.dart';
import 'package:movie/utils/text_style.dart';
import 'package:movie/views/widgets/movie_card_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _cardMovie = <MovieModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        size: 28, color: ColorPallete().primaryColor),
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Text(
                    'Search Result',
                    style: textCustom.copyWith(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '(3)',
                    style: textCustom.copyWith(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: _cardMovie.length,
                  itemBuilder: (context, index) {
                    return MovieCardWidget(data: _cardMovie[index]);
                  })
            ],
          ),
        ),
      )),
    );
  }

  void _initData() {
    //init data for card movie
    _cardMovie.add(MovieModel(
        title: 'The Dark II',
        subTitle: 'Horror',
        image: 'assets/the_dark.png',
        rating: 4));
    _cardMovie.add(MovieModel(
        title: 'The Dark Knight',
        subTitle: 'Heroes',
        image: 'assets/dark_knight.png',
        rating: 5));
    _cardMovie.add(MovieModel(
        title: 'The Dark Tower',
        subTitle: 'Action',
        image: 'assets/dark_tower.png',
        rating: 4));
  }
}
