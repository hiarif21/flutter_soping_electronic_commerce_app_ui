import 'package:animate_do/animate_do.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soping/src/models/menu_model.dart';
import 'package:soping/src/models/product_model.dart';
import 'package:soping/src/models/story_model.dart';
import 'package:soping/src/screens/product_detail_screen.dart';
import 'package:soping/src/styles/colors_app.dart';
import 'package:soping/src/styles/themes_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<StoryModel> storyList = StoryModel.storyList;

  final List<ProductModel> productList = ProductModel.productList;

  @override
  Widget build(BuildContext context) {
    final bool isLight = Theme.of(context).brightness == Brightness.light;

    return ThemeSwitchingArea(
      child: Scaffold(
        // body section
        body: CustomScrollView(
          slivers: [
            // app bar
            SliverAppBar(
              backgroundColor:
                  isLight ? ColorsApp.neutral100 : ColorsApp.slate900,
              snap: true,
              floating: true,
              elevation: 1,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(16),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      ElasticIn(
                        delay: const Duration(milliseconds: 300),
                        duration: const Duration(milliseconds: 1500),
                        child: const Text(
                          "Soping",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      const Spacer(),

                      // action sections
                      ElasticIn(
                        delay: const Duration(milliseconds: 300),
                        duration: const Duration(milliseconds: 1500),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color:
                                isLight ? ColorsApp.white : ColorsApp.slate700,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(999),
                                  child: Ink(
                                    height: 32,
                                    width: 32,
                                    padding: const EdgeInsets.all(8),
                                    child: SvgPicture.asset(
                                      "assets/icons/shopping_cart.svg",
                                      color: isLight
                                          ? ColorsApp.slate900
                                          : ColorsApp.slate100,
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(999),
                                  child: Ink(
                                    height: 32,
                                    width: 32,
                                    padding: const EdgeInsets.all(8),
                                    child: SvgPicture.asset(
                                      "assets/icons/comment_alt.svg",
                                      color: isLight
                                          ? ColorsApp.slate900
                                          : ColorsApp.slate100,
                                    ),
                                  ),
                                ),
                              ),
                              ThemeSwitcher.withTheme(
                                builder: (context, switcher, theme) =>
                                    GestureDetector(
                                  onTap: () => switcher.changeTheme(
                                    isReversed: true,
                                    theme: theme.brightness == Brightness.light
                                        ? ThemesApp.darkTheme
                                        : ThemesApp.lightTheme,
                                  ),
                                  child: Swing(
                                    delay: const Duration(milliseconds: 300),
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        isLight
                                            ? "assets/icons/sun.svg"
                                            : "assets/icons/moon.svg",
                                        color: isLight
                                            ? ColorsApp.slate900
                                            : ColorsApp.slate100,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(999),
                                  child: Ink(
                                    height: 32,
                                    width: 32,
                                    padding: const EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(999),
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.asset(
                                          "assets/images/profile_picture.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // story section
            SliverToBoxAdapter(
              child: SizedBox(
                height: 80,
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 14,
                    right: 14,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: storyList.length,
                  itemBuilder: (context, index) => Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(999),
                      child: Ink(
                        height: 72,
                        width: 72,
                        padding: const EdgeInsets.all(6),
                        child: ElasticInRight(
                          from: 400,
                          delay: index < 6 && index > 0
                              ? Duration(milliseconds: 100 * (index + 1))
                              : const Duration(milliseconds: 100),
                          duration: const Duration(milliseconds: 1500),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(999),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset(
                                storyList[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // product section
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    top: 32,
                    left: 20,
                    right: 20,
                  ),
                  child: ElasticInUp(
                    from: 400,
                    delay: index < 3 && index > 0
                        ? Duration(milliseconds: 300 * (index + 1))
                        : const Duration(milliseconds: 300),
                    duration: const Duration(milliseconds: 1500),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // title product
                            Text(
                              productList[index].name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),

                            // hashtag product
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                minimumSize: const Size(
                                  double.minPositive,
                                  double.minPositive,
                                ),
                                backgroundColor: isLight
                                    ? ColorsApp.white
                                    : ColorsApp.slate700,
                                foregroundColor: isLight
                                    ? ColorsApp.slate900
                                    : ColorsApp.slate100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                textStyle: const TextStyle(fontSize: 12),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(productList[index].hashtag),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // image section
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(
                                milliseconds: 500,
                              ),
                              transitionsBuilder: (
                                context,
                                animation,
                                secondaryAnimation,
                                child,
                              ) {
                                animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeInOut,
                                );

                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                              pageBuilder: (
                                context,
                                animation,
                                secondaryAnimation,
                              ) {
                                return ProductDetailScreen(
                                  product: productList[index],
                                );
                              },
                            ),
                          ),
                          child: Hero(
                            tag: productList[index].id,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image.asset(
                                  productList[index].images[0],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // end section product
                      ],
                    ),
                  ),
                ),
                childCount: productList.length,
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),

        // bottom bar section
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 64,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElasticIn(
            delay: const Duration(milliseconds: 1500),
            duration: const Duration(milliseconds: 1500),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: isLight ? ColorsApp.white : ColorsApp.slate700,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: List.generate(
                  MenuModel.menuList.length,
                  (index) => Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(999),
                        child: Ink(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            MenuModel.menuList[index].icon,
                            color: index == 0
                                ? ColorsApp.rose500
                                : isLight
                                    ? ColorsApp.slate900
                                    : ColorsApp.slate100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
