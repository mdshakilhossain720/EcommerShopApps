import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/image_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(ImagePath.logo,width: 100);
  }
}