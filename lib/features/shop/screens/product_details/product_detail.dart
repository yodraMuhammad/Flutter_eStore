import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
// import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Product Image Slider
            const TProductImageSlider(),

            // 2- Product Detail
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(children: [
                // - Rating & Share Buton
                const TRatingAndShare(),

                // - Price, Title, Stack, & Brand
                const TProductMetaData(),

                // - Attributes
                const ProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections),

                // - Checkout Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Checkout')),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                // - Description
                const TSectionHeading(
                    title: 'Description', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwSections),
                const ReadMoreText(
                  'Introducing the Nike ProRun X1, where innovation meets performance to redefine your running experience. Whether youre a seasoned marathoner or a casual jogger, these shoes are designed to propel you forward with every stride.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: ' Less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                // - Review
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(
                        title: 'Review(199)', showActionButton: false),
                    IconButton(
                      icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
