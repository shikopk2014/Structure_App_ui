import 'package:flutter/material.dart';
import 'package:sho_app/modules/main_screen/main_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';

class PaymentScreen2 extends StatelessWidget {
  const PaymentScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBarConst(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        ''
                            ' المشاريع - فال 13 - مبني 121 -سباكة - لبشة 30.000',
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: Colors.black87, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                v2Space,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('تم الاعتماد بواسطة المهندس: طارق', style:Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,color: color4,
                    ),),
                    Text('2021/8/16', style:Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 10.0,
                    ),),
                  ],
                ),
                v1Space,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('تم الاعتماد بواسطة المهندس: طارق', style:Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,color: color4,
                    ),),
                    Text('2021/8/16', style:Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 10.0,
                    ),),
                  ],
                ),
                v2Space,
                Card(
                  elevation:10.0 ,
                  child: Container(
                    width: double.infinity,
                    child: Image.network(
                        'https://babel-cloud.sfo2.cdn.digitaloceanspaces.com/uploads/content/972fddac9a5b0159e53489ee4abc9159.png'),
                  ),
                ),
                Card(
                  elevation:10.0 ,
                  child: Container(
                    width: double.infinity,
                    child: Image.network(
                        'https://babel-cloud.sfo2.cdn.digitaloceanspaces.com/uploads/content/972fddac9a5b0159e53489ee4abc9159.png'),
                  ),
                ),
                v2Space,
                DefaultButton(
                  isIcon: true,
                  isSelect:true ,
                  text: 'طباعة',
                  onPressed: (){
                    navigateTo(context, MainScreen());
                  },
                ),
                v3Space,


              ],
            ),
          ),
        ),
      ),
    );
  }
}