import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/workout_details_controller.dart';

class WorkoutDetailsView extends GetView<WorkoutDetailsController> {
  const WorkoutDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WorkoutDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WorkoutDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
