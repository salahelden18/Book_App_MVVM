import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomButton(
            backdroundColor: Colors.white,
            textColor: Colors.black,
            text: '19.99\$',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            backdroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            text: 'Free Preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
