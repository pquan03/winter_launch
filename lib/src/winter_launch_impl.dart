part of '../winter_launch.dart';

class _WinterLaunchImpl extends WinterLaunch {
  final String _winterLaunchKey = 'winter_launch_key';

  @override
  Future<bool> isAppFirstLaunch() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(_winterLaunchKey) ?? true;
  }

  @override
  Future<void> registerAppLaunched() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    await sharedPreferences.setBool(_winterLaunchKey, false);
  }
}
