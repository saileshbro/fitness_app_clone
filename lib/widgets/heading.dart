import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/pages/clallenges.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.sectionName});
  final String sectionName;
  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            sectionName,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              switch (sectionName.toLowerCase()) {
                case 'recent challenges':
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return const ChallengesPage();
                      },
                    ),
                  );
                  break;
                default:
              }
            },
            child: Text(
              'VIEW ALL',
              style: TextStyle(
                fontSize: 13,
                color: brandDark,
                fontWeight: FontWeight.w900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
