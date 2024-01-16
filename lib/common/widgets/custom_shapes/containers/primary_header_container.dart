import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constans/colors.dart';
import 'package:flutter/cupertino.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            // Backgrond Custom Shape
            Positioned(
              top: -150,
              right: -250,
              child: TRoundedContainer(
                backgroundColor: TColors.white.withOpacity(0.1),
                height: 400,
                width: 400,
                radius: 400,
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TRoundedContainer(
                backgroundColor: TColors.white.withOpacity(0.1),
                height: 400,
                width: 400,
                radius: 400,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
