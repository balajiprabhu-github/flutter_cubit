import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key,this.width,this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.00),
        color: AppColors.mainColor
      ),
      child: Row(
        children: [
          Image.asset("img/button-one.png")
        ],
      ),
    );
  }
}
