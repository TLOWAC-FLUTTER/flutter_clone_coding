import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;

  const ExerciseList({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exerciseName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${numberOfExercises} Exercises",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
