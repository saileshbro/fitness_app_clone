import 'package:fitness_app/widgets/challenges_card.dart';
import 'package:flutter/material.dart';

class ChallengesSlider extends StatelessWidget {
  const ChallengesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const ChallengeCard();
        },
      ),
    );
  }
}
