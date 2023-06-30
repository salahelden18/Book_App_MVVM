import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
    required this.rating,
  });

  final MainAxisAlignment mainAxisAlignment;

  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 14,
        ),
        const SizedBox(width: 6),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 6),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
