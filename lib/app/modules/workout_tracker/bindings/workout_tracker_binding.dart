import 'package:get/get.dart';

import '../controllers/workout_tracker_controller.dart';

class WorkoutTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkoutTrackerController>(
      () => WorkoutTrackerController(),
    );
  }
}
