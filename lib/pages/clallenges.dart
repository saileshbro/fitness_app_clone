import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: AppBarClipper(),
            child: Container(
              decoration: BoxDecoration(
                color: appBarUnderneath,
              ),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'All Challenges',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      FontAwesomeIcons.filter,
                      size: 13,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 28, right: 28),
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  ChallengesCard(
                    description: 'Move into the new year with fresh beginings!',
                    eventName: 'Hardcore New Year',
                    numberOfPlayers: 1250,
                    potSize: r'$10,500',
                    perBet: r'$100',
                    imageUrl:
                        'https://images.unsplash.com/photo-1482267553367-e79b27d2bba1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                  ),
                  ChallengesCard(
                    eventName: 'Are you Marathon ready?',
                    numberOfPlayers: 591,
                    potSize: r'$6,000',
                    description: 'Ultimate test of your body!',
                    perBet: r'$40',
                    imageUrl:
                        'https://images.unsplash.com/photo-1513276193780-64b881470da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                  ),
                  ChallengesCard(
                    eventName: 'Mountain Treak',
                    description: 'Explore the nature!',
                    imageUrl:
                        'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                    numberOfPlayers: 523,
                    perBet: r'$421',
                    potSize: r'$5,124',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChallengesCard extends StatelessWidget {
  const ChallengesCard({
    required this.eventName,
    required this.description,
    required this.numberOfPlayers,
    required this.perBet,
    required this.potSize,
    required this.imageUrl,
    super.key,
  });
  final String eventName;
  final String description;
  final int numberOfPlayers;
  final String potSize;
  final String perBet;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              spreadRadius: 1,
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.fitWidth,
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    eventName,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.userGroup,
                            color: brandDark,
                            size: 10,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                numberOfPlayers.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'Players',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.gift,
                            color: brandDark,
                            size: 10,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                potSize,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'pot size',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.gift,
                            color: brandDark,
                            size: 10,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                perBet,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'per bet',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
