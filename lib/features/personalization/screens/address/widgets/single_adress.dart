import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/constans/colors.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAdress extends StatelessWidget {
  const TSingleAdress({super.key, required this.selectedAdress});

  final bool selectedAdress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backgroundColor: selectedAdress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAdress
        ? Colors.transparent
        : dark
          ? TColors.darkerGrey
          : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAdress ? Iconsax.tick_circle5 : null,
              color: selectedAdress
                ? dark  
                  ? TColors.light
                  : TColors.dark
                : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yodra M',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm /2 ),
              const Text(
                '(+62) 832-3211-3211',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: TSizes.sm /2 ),
              const Text(
                '32132 House, Bandung, West Java, IND',
                softWrap: true,
              ),
              
            ],
          )
        ],
      ),
    );
  }
}