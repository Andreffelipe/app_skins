import 'package:get_it/get_it.dart';
import 'package:skins/controller/carController.dart';
import 'package:skins/core/wall/pollfish.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<IPollFish>(() => PollFishController());
  sl.registerLazySingleton<CarController>(() => CarImplementation());
}
