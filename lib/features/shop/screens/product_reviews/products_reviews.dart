import 'package:ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and review are verified and are from people who use same typeof device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Ratins
              const TOverallProductRating(),
              const TRatingBraIndicator(rating: 3.5),
              Text('21,623', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User Review List
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
          ),
      ),
    );
  }
}

