import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sho_app/models/building_models.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/lists&grids.dart';

class BuildingScreen extends StatelessWidget {
  final int? index;

  const BuildingScreen({Key? key, this.index = 0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBarConst(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ' المشاريع - فال${index! + 13}',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.black87,
                            ),
                      ),
                    ],
                  ),
                ), //المشاريع
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => Center(
                    child: BuildingGridView(
                      list: buildingList[index],
                      index: index,
                    ),
                  ),
                  itemCount: buildingList.length,
                ),
                // [جريد فيو] المشاريع ب الستاك
              ],
            ),
          ),
        ),
      ),
    );
  }
}
