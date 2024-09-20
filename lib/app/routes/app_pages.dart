import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/workout_details/bindings/workout_details_binding.dart';
import '../modules/workout_details/views/workout_details_view.dart';
import '../modules/workout_tracker/bindings/workout_tracker_binding.dart';
import '../modules/workout_tracker/views/workout_tracker_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WORKOUT_TRACKER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WORKOUT_TRACKER,
      page: () => const WorkoutTrackerView(),
      binding: WorkoutTrackerBinding(),
    ),
    GetPage(
      name: _Paths.WORKOUT_DETAILS,
      page: () => const WorkoutDetailsView(),
      binding: WorkoutDetailsBinding(),
    ),
  ];
}
