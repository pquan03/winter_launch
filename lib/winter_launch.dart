library winter_launch;

import 'package:shared_preferences/shared_preferences.dart';
part 'src/winter_launch_impl.dart';

abstract class WinterLaunch {
  WinterLaunch();

  factory WinterLaunch.newInstance() => _WinterLaunchImpl();

  Future<bool> isAppFirstLaunch();

  Future<void> registerAppLaunched();
}
