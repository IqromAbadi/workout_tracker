import 'package:get/get.dart';
import 'package:workout_tracker/app/data/items.dart';

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

  @override
  void onReady() {
    super.onReady();
    fetchitems();
  }
}
