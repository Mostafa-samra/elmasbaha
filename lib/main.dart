import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'shared/networl/local/cash_helper.dart';
import 'view/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();

  runApp(const ElMesbaha()
      /*   DevicePreview(
      enabled: kDebugMode && kIsWeb,
      builder: (context) {
        return const ElMesbaha();
      },
    ), */
      );
}

class ElMesbaha extends StatelessWidget {
  const ElMesbaha({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /*   return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomPage(),
    ); */

    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>
          const MaterialApp(debugShowCheckedModeBanner: false, home: HomPage()),
    );
  }
}
