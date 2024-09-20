import 'package:get/get.dart';
import 'package:workout_tracker/app/data/trains.dart';

class WorkoutTrackerController extends GetxController {
  var isSwitched = false.obs;
  var isSwitched1 = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchtrains();
  }

  void fetchtrains() async {
    await Future.delayed(Duration(seconds: 2));
    var fetchedtrains = [
      trains(
          title: "Fullbody Workout",
          subtitle: "11 Excercises | 32 Mins",
          imageUrl: "assets/images/skiping.svg")
    ];
  }
}
