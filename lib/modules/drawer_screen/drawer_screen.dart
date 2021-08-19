import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sho_app/modules/certifiedExtracts_screen/certifiedExtracts_screen.dart';
import 'package:sho_app/modules/pendingExtracts_screen/pendingExtracts_screen.dart';
import 'package:sho_app/modules/profile_screen/profile_screen.dart';
import 'package:sho_app/modules/splash_screen/splash_screen.dart';
import 'package:sho_app/shared/component/buttons.dart';
import 'package:sho_app/shared/component/constants.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pic.png',
                width: 200.0,
                height: 150.0,
              ),
              Text(
                'شركة اتحاد الماسة للماقاولات',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 16.0),
              ),
              v2Space,
              divider(), //divider
              v2Space,
              DrawerButton(
                title: 'الرئيسية',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              DrawerButton(
                title: 'مستخلصات معلقة',
                onTap: () {
                  navigateTo(context, PendingExtractsScreen());
                },
              ),
              DrawerButton(
                title: 'مستخلصات معتمدة',
                onTap: () {
                  navigateTo(context, CertifiedScreen());
                },
              ),
              DrawerButton(
                title: 'البروفايل',
                onTap: () {
                  navigateTo(context, ProfileScreen());
                },
              ),
              DrawerButton(
                title: 'الاعدادات',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              DrawerButton(
                title: 'تسجيل خروج',
                onTap: () {
                  navigateTo(context, SplashScreen());
                },
              ),
              // المينيو
            ],
          ),
        ),
      ),
    );
  }
}
