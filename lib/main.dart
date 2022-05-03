import 'package:flutter/material.dart';
import 'package:moni_app/Screens/Cluster/cluster_main_page.dart';
import 'package:moni_app/Styles/color.dart';
import 'package:moni_app/Styles/dimens.dart';

void main() {
  runApp(const MoniApp());
}

class MoniApp extends StatelessWidget {
  const MoniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColor.white,
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: AppColor.pink,
          ),
          appBarTheme: AppBarTheme(
              elevation: 0,
              color: Colors.transparent,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: AppColor.white,
                  fontSize: AppSize.bigText,
                  fontWeight: FontWeight.bold),
              iconTheme:
                  IconThemeData(color: AppColor.white, size: AppSize.bigText)),
          fontFamily: 'DMSans'),
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return Builder(
          builder: (context) {
            return MediaQuery(
              data: data.copyWith(
                textScaleFactor: data.textScaleFactor.clamp(0.85, 0.90),
              ),
              child: child!,
            );
          },
        );
      },
      home: const ClusterMainPage(),
    );
  }
}
