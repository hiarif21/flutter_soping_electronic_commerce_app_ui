import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soping/src/models/product_model.dart';
import 'package:soping/src/styles/colors_app.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isLight = Theme.of(context).brightness == Brightness.light;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // app bar section
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
                      duration: const Duration(milliseconds: 1500),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          "assets/icons/arrow_alt_left.svg",
                          height: 16,
                          color:
                              isLight ? ColorsApp.slate900 : ColorsApp.slate100,
                        ),
                      ),
                    ),
                    const Spacer(),

                    // action sections
                    ElasticIn(
                      duration: const Duration(milliseconds: 1500),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: isLight ? ColorsApp.white : ColorsApp.slate700,
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
                                    "assets/icons/heart.svg",
                                    color: ColorsApp.rose500,
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
                                    "assets/icons/share.svg",
                                    color: isLight
                                        ? ColorsApp.slate900
                                        : ColorsApp.slate100,
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

          // carousel section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElasticInUp(
                from: 1000,
                duration: const Duration(milliseconds: 1500),
                child: CarouselSlider(
                  items: List.generate(
                    widget.product.images.length,
                    (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.product.images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    aspectRatio: 393 / 300,
                    enlargeCenterPage: true,
                    viewportFraction: 0.75,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    padEnds: true,
                  ),
                ),
              ),
            ),
          ),

          // title, description and others
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title and hashtag section
                  ElasticInUp(
                    from: 1000,
                    delay: const Duration(milliseconds: 100),
                    duration: const Duration(milliseconds: 1500),
                    child: Row(
                      children: [
                        // title product
                        Text(
                          widget.product.name,
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
                            backgroundColor:
                                isLight ? ColorsApp.white : ColorsApp.slate700,
                            foregroundColor: isLight
                                ? ColorsApp.slate900
                                : ColorsApp.slate100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                            textStyle: const TextStyle(fontSize: 12),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(widget.product.hashtag),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // rating section
                  ElasticInUp(
                    from: 1000,
                    delay: const Duration(milliseconds: 100),
                    duration: const Duration(milliseconds: 1500),
                    child: Row(
                      children: [
                        // icon star
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          height: 14,
                          color: ColorsApp.orange500,
                        ),
                        const SizedBox(width: 8),

                        // rating and total review
                        RichText(
                          text: TextSpan(
                            text: widget.product.rating,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text:
                                      " (${widget.product.totalReview} Review)",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // description section
                  ElasticInUp(
                    from: 1000,
                    delay: const Duration(milliseconds: 200),
                    duration: const Duration(milliseconds: 1500),
                    child: const Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElasticInUp(
                    from: 1000,
                    delay: const Duration(milliseconds: 200),
                    duration: const Duration(milliseconds: 1500),
                    child: _buildDescription(),
                  ),
                  const SizedBox(height: 32),

                  // see review button section
                  ElasticInUp(
                    from: 1000,
                    delay: const Duration(milliseconds: 300),
                    duration: const Duration(milliseconds: 1500),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isLight ? ColorsApp.white : ColorsApp.slate700,
                        foregroundColor:
                            isLight ? ColorsApp.slate900 : ColorsApp.slate100,
                        elevation: 0,
                        padding: const EdgeInsets.all(12),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        textStyle: const TextStyle(fontSize: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              const SizedBox(height: 32, width: 64),
                              for (int i = 0;
                                  i < widget.product.reviewerImages.length;
                                  i++)
                                Positioned(
                                  left: 16.0 * i,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(999),
                                    child: Image.asset(
                                      widget.product.reviewerImages[i],
                                      height: 32,
                                      width: 32,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                            ],
                          ),

                          // text
                          const Expanded(
                            child: Text(
                              "See reviews about this product",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),

      // bottom bar section
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElasticInUp(
          from: 1000,
          delay: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 1500),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.rose500,
                      foregroundColor: ColorsApp.white,
                      elevation: 0,
                      padding: const EdgeInsets.all(22.5),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    child: Text("\$ ${widget.product.price}"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isLight ? ColorsApp.slate900 : ColorsApp.slate100,
                      foregroundColor:
                          isLight ? ColorsApp.white : ColorsApp.slate900,
                      elevation: 0,
                      padding: const EdgeInsets.all(22.5),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    child: const Text("Buy Now"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool more = false;
  Widget _buildDescription() {
    String description = widget.product.description;

    if (description.length < 300) {
      return Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 12),
      );
    }

    return GestureDetector(
      onTap: () => setState(() {
        more = !more;
      }),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: more ? description : description.substring(0, 300),
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            TextSpan(
              text: more ? " ...less" : " ...more",
              style: TextStyle(
                color: more ? ColorsApp.slate500 : ColorsApp.rose500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
