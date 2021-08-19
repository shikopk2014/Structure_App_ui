import 'package:flutter/material.dart';
import 'package:sho_app/modules/payment_screen/payment_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';

class Services2Screen extends StatelessWidget {
  final int? index;

  const Services2Screen({
    Key? key,
    this.index = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBarConst(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        ''
                        'المشاريع - فال 13 - مبني 121 -سباكة',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.black87,
                              fontSize: 17.0
                            ),
                      ),
                    ),
                  ],
                ),
                v3Space,
                ServicesButton(
                    fontSize:17.0,
                    isIcon: false,
                    isArrow: true,
                    title: 'لبشة 30.000',
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v3Space,
                ServicesButton(
                    fontSize: 17.0,
                    isIcon: false,
                    isArrow: true,
                    title: 'سقف ارضي 25.555',
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v3Space,
                ServicesButton(
                    fontSize: 17.0,
                    isIcon: false,
                    isArrow: true,
                    title: 'سقف أول 25.555',
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v3Space,
                ServicesButton(
                    fontSize: 17.0,
                    isIcon: false,
                    isArrow: true,
                    title: 'سقف ملحق 15.000',
                    onPressed: () {
                      navigateTo(context, PaymentScreen());
                    }),
                v3Space,

              ],
            ),
          ),
        ),
      ),
    );
  }
}
