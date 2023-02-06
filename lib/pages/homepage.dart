import 'package:fitness_app/widgets/challenges_slider.dart';
import 'package:fitness_app/widgets/dashboard_stat.dart';
import 'package:fitness_app/widgets/heading.dart';
import 'package:fitness_app/widgets/stat_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              FontAwesomeIcons.solidHeart,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              FontAwesomeIcons.bell,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          const DashboardStat(),
          const Heading(sectionName: 'RECENT CHALLENGES'),
          const ChallengesSlider(),
          const Heading(sectionName: 'COMPLETED GOALS'),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (_, __) => const StatCard(),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
