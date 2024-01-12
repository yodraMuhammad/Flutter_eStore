import 'package:ecommerce/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:ecommerce/utils/constans/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
