import 'package:flutter/material.dart';
import 'check_score.dart';

class YourScore extends StatefulWidget {
  const YourScore({super.key});

  @override
  State<YourScore> createState() => _YourScoreState();
}

class _YourScoreState extends State<YourScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(mq.width * .030),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: mq.width * .90,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue)),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(mq.height * .01),
                  child: const Text(
                    'New Check Score',
                    style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: mq.height * .03,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(mq.width * .02),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Manish Kasana',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: mq.height * .002,
                        ),
                        const Text(
                          'Delhi Police Constable 2023',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: mq.height * .002,
                        ),
                        LinearProgressIndicator(
                          value: 0.75, // Assuming 75% progress
                          color: Colors.green,
                          backgroundColor: Colors.grey.shade300,
                        ),
                        SizedBox(
                          height: mq.height * .002,
                        ),
                        const Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '1232 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  'Rank',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'out of 126432',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.refresh,
                          size: 30,
                        ),
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          size: 30,
                        ),
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(mq.width * .02),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Manish Kasana',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: mq.height * .002,
                        ),
                        const Text(
                          'Delhi Police Constable 2023',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: mq.height * .002,
                        ),
                        LinearProgressIndicator(
                          value: 0.75, // Assuming 75% progress
                          color: Colors.green,
                          backgroundColor: Colors.grey.shade300,
                        ),
                        SizedBox(
                          height: mq.height * .002,
                        ),
                        const Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '1232 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  'Rank',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'out of 126432',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.refresh,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
