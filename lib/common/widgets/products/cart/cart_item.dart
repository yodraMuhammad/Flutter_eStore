import 'package:ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constans/colors.dart';
import 'package:ecommerce/utils/constans/image_strings.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          widht: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgoroundColor: dark ? TColors.grey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
    
        // Tilte, Price, & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
              child: TProductTitleText(title: 'Black Sport Shoes', maxLine: 1),
            ),
            // Atribute
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
                ]
              ),
            ),
    
          ],
        )
      ],
    );
  }
}