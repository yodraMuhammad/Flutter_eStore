import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/utils/constans/colors.dart';
import 'package:ecommerce/utils/constans/image_strings.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Yodra M', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const TRatingBraIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('31 Nove 2023', style: Theme.of(context).textTheme.bodyMedium),  
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          'Pertama kali mencoba sepatu ini dan saya sangat terkesan. Desainnya modern dan sangat nyaman dipakai sehari-hari. Material yang digunakan terasa berkualitas tinggi, memberikan dukungan yang baik untuk kaki. Meskipun saya memberikan rating 4, itu hanya karena sedikit masalah dengan ukuran yang kurang pas untuk saya. Selain itu, sepatu ini layak mendapatkan pujian karena kenyamanan dan gaya yang ditawarkan. Sangat direkomendasikan!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.titleMedium),
                    Text("02 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'Pertama kali mencoba sepatu ini dan saya sangat terkesan. Desainnya modern dan sangat nyaman dipakai sehari-hari. Material yang digunakan terasa berkualitas tinggi, memberikan dukungan yang baik untuk kaki. Meskipun saya memberikan rating 4, itu hanya karena sedikit masalah dengan ukuran yang kurang pas untuk saya. Selain itu, sepatu ini layak mendapatkan pujian karena kenyamanan dan gaya yang ditawarkan. Sangat direkomendasikan!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,)
      ],

    );
  }
}