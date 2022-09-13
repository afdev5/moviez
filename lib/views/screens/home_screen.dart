import 'package:flutter/material.dart';
import 'package:movie/models/movie_model.dart';
import 'package:movie/utils/text_style.dart';
import 'package:movie/views/widgets/appbar_custom_widget.dart';
import 'package:movie/views/widgets/card_custom_widget.dart';
import 'package:movie/views/widgets/movie_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _cardPromo = <MovieModel>[];
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
                //AppBar Custom
                const AppbarCustomWidget(),
                const SizedBox(height: 30),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _cardPromo.length,
                      itemBuilder: (context, index) {
                        return CardCustomWidget(
                            isLastCard: index == 1,
                            data: _cardPromo[index]);
                      }),
                ),
                const SizedBox(height: 20),
                Text(
                  'From Disney',
                  style: textCustom.copyWith(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: _cardMovie.length,
                    itemBuilder: (context, index) {
                      return MovieCardWidget(
                          data: _cardMovie[index]);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _initData() {
    //init data for card promo
    _cardPromo.add(MovieModel(title: 'John Wick 4', subTitle: 'Action, Crime', image: 'assets/john_wick.png', rating: 5));
    _cardPromo.add(MovieModel(title: 'Bohemian', subTitle: 'Documentary', image: 'assets/bohemian.png', rating: 3));

    //init data for card movie
    _cardMovie.add(MovieModel(title: 'Mulan Session', subTitle: 'History, War', image: 'assets/mulan.png', rating: 3));
    _cardMovie.add(MovieModel(title: 'Beauty & Beast', subTitle: 'Sci-Fiction', image: 'assets/beauty.png', rating: 5));
    _cardMovie.add(MovieModel(title: 'The Dark II', subTitle: 'Horror', image: 'assets/the_dark.png', rating: 4));
    _cardMovie.add(MovieModel(title: 'The Dark Knight', subTitle: 'Heroes', image: 'assets/dark_knight.png', rating: 5));
  }
}
