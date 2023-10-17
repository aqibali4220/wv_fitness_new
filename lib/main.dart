
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:wv_fitness_new/utils/const.dart';
import 'package:wv_fitness_new/utils/localization_page.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/view/login_screen.dart';
import 'package:wv_fitness_new/view/auth/auth_screens/view/signup_screen.dart';
import 'package:wv_fitness_new/view/auth/splash_screen/screen/splash_screen.dart';
import 'package:wv_fitness_new/view/exercise/view/exercise_list_screen.dart';
import 'package:wv_fitness_new/view/resources/view/edit_profile_screen.dart';



import 'data/data_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DataBindings();
  await Hive.initFlutter();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Hive.openBox(cWVBoxKey);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: LocalizationService.locale,
        fallbackLocale: LocalizationService.fallbackLocale,
        translations: LocalizationService(),
        debugShowCheckedModeBanner: false,
        title: 'WV Fitness',
        getPages: [
          GetPage(
            name: "/",
            page: () =>   SplashScreen(),
          )
        ]);
  }
}
