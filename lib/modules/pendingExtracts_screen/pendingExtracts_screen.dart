import 'package:flutter/material.dart';
import 'package:sho_app/modules/payment_screen/payment_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';

class PendingExtractsScreen extends StatelessWidget {
  const PendingExtractsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: color1,
        appBar: appBarConst(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'مستخلصات معلقة',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                v3Space,
                Date(
                  dateText: '31/6/2021',
                ),
                v2Space,
                ServicesButton(
                    isIcon: false,
                    isArrow: true,
                    title: 'فال 13 - مبني 121 -سباكة-لبشة',
                    fontSize: 13,
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v2Space,
                ServicesButton(
                    isIcon: false,
                    isArrow: true,
                    title: 'فال 13 - مبني 121 -سباكة-لبشة',
                    fontSize: 13,
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v2Space,
                ServicesButton(
                    isIcon: false,
                    isArrow: true,
                    title: 'فال 13 - مبني 121 -سباكة-لبشة',
                    fontSize: 13,
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v3Space,
                Date(dateText: '25/4/2021'),
                v2Space,
                ServicesButton(
                    isIcon: false,
                    isArrow: true,
                    title: 'فال 13 - مبني 121 -سباكة-لبشة',
                    fontSize: 13,
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v2Space,
                ServicesButton(
                    isIcon: false,
                    isArrow: true,
                    title: 'فال 13 - مبني 121 -سباكة-لبشة',
                    fontSize: 13,
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v2Space,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
