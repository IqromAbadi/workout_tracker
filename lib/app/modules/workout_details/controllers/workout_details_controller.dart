import 'package:get/get.dart';
import 'package:workout_tracker/app/data/items.dart';
import 'package:workout_tracker/app/data/set1.dart';
import 'package:workout_tracker/app/data/set2.dart';

class WorkoutDetailsController extends GetxController {
//MENGAMBIL DATA BERDASARKAN ITEM YANG DIPILIH DARI PAGE WORKOUT TRACKER
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

  //MENGAMBIL DATA ITEM YANG DIBUTUHKAN
  var itemneedlist = <ItemNeed>[].obs;

  void fetchitems() async {
    await Future.delayed(const Duration(seconds: 0));
    var fetcheditems = [
      ItemNeed(
        title: "Barbel",
        imageUrl: "assets/images/burble.png",
      ),
      ItemNeed(
        title: "Skiping Rope",
        imageUrl: "assets/images/skipingrope.png",
      ),
      ItemNeed(
        title: "Bottle Liter",
        imageUrl: "assets/images/bottle.png",
      ),
    ];
    itemneedlist.value = fetcheditems; // Update value with fetched data
  }

  //MENGAMBIL DATA SET1 YANG DIBUTUHKAN
  var setlist = <Set1>[].obs;

  void fetchsets() async {
    await Future.delayed(const Duration(seconds: 0));
    var fetchedsets = [
      Set1(
        name: "Warm Up",
        description: "05.00",
        image: "assets/images/warmup.png",
      ),
      Set1(
        name: "Jumping Jack",
        description: "10 Reps",
        image: "assets/images/jumpingjack.png",
      ),
      Set1(
        name: "Skiping",
        description: "10 Reps",
        image: "assets/images/skping.png",
      ),
      Set1(
        name: "Squat",
        description: "10 Reps",
        image: "assets/images/squats.png",
      ),
      Set1(
        name: "Arm Raises",
        description: "10 Reps",
        image: "assets/images/armrais.png",
      ),
      Set1(
        name: "Resyt and Drink",
        description: "10 Reps",
        image: "assets/images/rest.png",
      ),
    ];
    setlist.value = fetchedsets;
  }

  //MENGAMBIL DATA SET2 YANG DIBUTUHKAN
  var setlist2 = <Set2>[].obs;

  void fetchsets2() async {
    await Future.delayed(const Duration(seconds: 0));
    var fetchedsets2 = [
      Set2(
        name: "Incline Push Up",
        description: "05.00",
        image: "assets/images/incline.png",
      ),
      Set2(
        name: "Push Up",
        description: "10 Reps",
        image: "assets/images/pushup.png",
      ),
      Set2(
        name: "Skiping",
        description: "10 Reps",
        image: "assets/images/skping.png",
      ),
      Set2(
        name: "Cobra Stretch",
        description: "10 Reps",
        image: "assets/images/cobra.png",
      ),
    ];
    setlist2.value = fetchedsets2;
  }

  @override
  void onReady() {
    super.onReady();
    fetchitems();
    fetchsets();
    fetchsets2();
  }
}
