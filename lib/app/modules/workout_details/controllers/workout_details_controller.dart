import 'package:get/get.dart';

class WorkoutDetailsController extends GetxController {
  String workoutName = '';
  String workoutDescription = '';

  @override
  void onInit() {
    super.onInit();
    workoutName = Get.arguments['title'] ?? 'Default Workout Name';

    workoutDescription =
        Get.arguments['subtitle'] ?? 'Default Workout Description';
    print('Workout: $workoutName, $workoutDescription');
  }
}
