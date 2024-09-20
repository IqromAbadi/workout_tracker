import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:workout_tracker/app/data/trains.dart';

class WorkoutTrackerController extends GetxController {
  var isSwitched = false.obs;
  var isSwitched1 = false.obs;
  var trainsList = <trains>[].obs;

  void fetchtrains() async {
    await Future.delayed(Duration(seconds: 2));
    var fetchedtrains = [
      trains(
        title: "Fullbody Workout",
        subtitle: "11 Exercises | 32 Mins",
        imageUrl: "assets/images/skiping.svg",
      ),
      trains(
        title: "Lowerbody Workout",
        subtitle: "12 Exercises | 40 Mins",
        imageUrl: "assets/images/dumble.svg",
      ),
      trains(
        title: "AB Workout",
        subtitle: "14 Exercises | 20 Mins",
        imageUrl: "assets/images/abs.svg",
      ),
    ];
    trainsList.value = fetchedtrains;
  }

  @override
  void onInit() {
    super.onInit();
    fetchtrains();
  }
}
