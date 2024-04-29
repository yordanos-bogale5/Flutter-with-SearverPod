import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virtual/core/app_export.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value)  {
    runApp(const MyApp());
  });
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,Orientation,deviceType) {
        return BlocProvider (
          create: (context)=> ThemeBloc (
            ThemeState(
              themeType: PrefUtils().getThemeData(),
            ),
          ),
          child: BlocBuilder<ThemeBloc, ThemeState> (
            builder:(context, state){
              return MaterialApp(
                theme : theme,
                title: 'virtual_shop',
                navigatorKey: NavigatorService.navigatorkey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,

                ],
                supportedLocales:const [
                  Locale(
                    'en',
                    '',
                  ),
                ],
                initialRoute: AppRoutes.intialRoute,
                routes:AppRoutes,routes,
              );
            },
          ),
        );
      },
    );
  }
}
