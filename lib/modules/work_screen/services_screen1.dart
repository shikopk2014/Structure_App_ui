import 'package:flutter/material.dart';
import 'package:sho_app/modules/work_screen/services_screen2.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/buttons.dart';

class Services1Screen extends StatelessWidget {
  final int? index;
  const Services1Screen({
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'المشاريع - فال 13 - مبني 121',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.black87,
                          ),
                    ),
                  ],
                ),
                v3Space,
                ServicesButton(
                  isIcon: true,
                  isArrow: false,
                  icon: Icons.plumbing,
                  title: 'سباكة',
                    onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                  isIcon: true,
                  isArrow: false,
                  icon: Icons.format_paint_outlined,
                  title: 'دهان',
                    onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                  isIcon: true,
                  isArrow: false,
                  icon: Icons.handyman_outlined,
                  title: 'نجاره',
                  onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                  isIcon: true,
                  isArrow: false,
                  icon: Icons.plumbing,
                  title: 'سباكة',
                  onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                  isIcon: true,
                  isArrow: false,
                  icon: Icons.format_paint_outlined,
                  title: 'دهان',
                  onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                  isIcon: true,
                  isArrow: false,
                  icon: Icons.handyman_outlined,
                  title: 'نجاره',
                  onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                    isIcon: true,
                    isArrow: false,
                    icon: Icons.format_paint_outlined,
                    title: 'دهان',
                    onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                    isIcon: true,
                    isArrow: false,
                    icon: Icons.handyman_outlined,
                    title: 'نجاره',
                    onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                    isIcon: true,
                    isArrow: false,
                    icon: Icons.format_paint_outlined,
                    title: 'دهان',
                    onPressed: (){navigateTo(context, Services2Screen());}
                ),
                v3Space,
                ServicesButton(
                    isIcon: true,
                    isArrow: false,
                    icon: Icons.handyman_outlined,
                    title: 'نجاره',
                    onPressed: (){navigateTo(context, Services2Screen());}
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
