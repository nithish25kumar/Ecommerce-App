import 'package:ecommerce/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_profileImage(), _gender(), _card()],
    );
  }
}

Widget _profileImage() {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:
          Colors.white, // Optional: You can keep a background color if needed
    ),
    child: ClipOval(
      child: Image.asset(
        'assets/images/profile.png',
        fit: BoxFit.cover, // Ensures the image fits within the circle
      ),
    ),
  );
}

Widget _gender() {
  return Container(
    height: 40,
    width: 70,
    decoration: BoxDecoration(
        color: AppColors.secondBackground,
        borderRadius: BorderRadius.circular(100)),
  );
}

Widget _card() {
  return Container(
    height: 40,
    width: 40,
    decoration: const BoxDecoration(
      color: AppColors.primary,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: SvgPicture.asset(
        'assets/vectors/bag.svg',
        height: 24, // Adjust the height as needed
        width: 24, // Adjust the width as needed
      ),
    ),
  );
}
