import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/personalization/screens/address/add_new_adress.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/single_adress.dart';
import 'package:ecommerce/utils/constans/colors.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAdressScreen extends StatelessWidget {
  const UserAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAdressScreen()),
        child: const Icon(Iconsax.add, color: TColors.white,),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAdress(selectedAdress: true),
              TSingleAdress(selectedAdress: false),
            ],
          ),
        ),
      ),
    );
  }
}