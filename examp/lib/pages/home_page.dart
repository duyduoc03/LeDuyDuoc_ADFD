import 'package:flutter/material.dart';

import '../constants.dart';
import '../core/constant/dimension_constant.dart';
import '../core/extention/text_style.dart';
import '../models/Product.dart';
import '../widgets/app_bar_container.dart';
import 'item_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  Widget _buildBoxWithImage(Color color, String imagePath, String label) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(kDefaultPaddin/1.5),
        padding: const EdgeInsets.all(kDefaultPaddin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: AppBarContainer(
            titleString: 'home',
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kItemPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Guy! ',
                        style: TextStyles.defaultStyle.fontHeader.whiteTextColor
                            .bold,
                      ),
                      const SizedBox(
                        height: kMediumPadding,
                      ),
                      Text(
                        'Where are you going next?',
                        style: TextStyles.defaultStyle.fontCaption
                            .whiteTextColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            implementLeading: false,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kItemPadding),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    enabled: true,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: 'Search your destination',
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(9),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(kItemPadding),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: kItemPadding),
                    ),
                    style: const TextStyle(),
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildBoxWithImage(
                        const Color(0x45D96226),
                        "assets/images/ico_hotel.png",
                        "Hotel",
                      ),
                      _buildBoxWithImage(
                        const Color(0x44E15353),
                        "assets/images/ico_plane.png",
                        "Plane",
                      ),
                      _buildBoxWithImage(
                        const Color(0x41A0D7CF),
                        "assets/images/ico_hotel_plane.png",
                        "All",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Popular Destinations',
                      style: TextStyles.defaultStyle.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: kMediumPadding,
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin),
                    child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: kDefaultPaddin,
                        crossAxisSpacing: kDefaultPaddin,
                      ),
                      itemBuilder: (context, index) =>
                          ItemCard(
                            product: products[index], press: () {  },
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}