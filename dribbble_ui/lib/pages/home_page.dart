import 'package:flutter/material.dart';
import 'package:flutter_clone_coding/utils/emoticon_face.dart';

import '../utils/exercies_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '')
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, Greg!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text(
                              "23 Jan, 2023",
                              style: TextStyle(color: Colors.blue[200]),
                            )
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(50)),
                            padding: EdgeInsets.all(12),
                            child: Icon(Icons.notification_add,
                                color: Colors.white))
                      ]),
                  SizedBox(height: 32),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            EmoticonFace(
                              emotionFace: '😊',
                            ),
                            SizedBox(height: 8),
                            Text("happy", style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(
                              emotionFace: '😂',
                            ),
                            SizedBox(height: 8),
                            Text("sad", style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(
                              emotionFace: '🤣',
                            ),
                            SizedBox(height: 8),
                            Text("fun", style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(
                              emotionFace: '😍',
                            ),
                            SizedBox(height: 8),
                            Text("love", style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExerciseList(
                      icon: Icons.favorite,
                      exerciseName: "Speaking Skills",
                      numberOfExercises: 15,
                      color: Colors.amber,
                    ),
                    ExerciseList(
                      icon: Icons.person,
                      exerciseName: "Reading Skills",
                      numberOfExercises: 8,
                      color: Colors.blueAccent,
                    ),
                    ExerciseList(
                      icon: Icons.star,
                      exerciseName: "Writing Skills",
                      numberOfExercises: 16,
                      color: Colors.purpleAccent,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
