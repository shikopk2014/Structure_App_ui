import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sho_app/models/projects_models.dart';
import 'package:sho_app/modules/drawer_screen/drawer_screen.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'package:sho_app/shared/component/lists&grids.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBarConst(),
        drawer: Container(
          width: MediaQuery.of(context).size.width*0.74,
            child: DrawerScreen()),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 5.0,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'المشاريع',
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    color: Colors.black87,
                                  ),
                        ),
                      ],
                    ),
                  ), //المشاريع
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => MenuList(
                            list: projectList[index],
                            index: index,
                          ),
                      separatorBuilder: (context, index) => v2Space,
                      itemCount: projectList.length), // ليست المشاريع ب الستاك
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class MenuList extends StatelessWidget {
//   final int? index;
//
//   final ProjectsModel? list;
//
//   const MenuList({
//     this.index,
//     this.list,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 15.0,
//         right: 15.0,
//       ),
//       child: Stack(
//         alignment: AlignmentDirectional.bottomStart,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 220,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.fill,
//                 image: NetworkImage(
//                   '${list!.imageUrl}',
//                 ),
//               ),
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//             child: MaterialButton(
//               onPressed: () {
//                 navigateTo(context, ProjectFal());
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Text(
//               'فال ${index! + 13}',
//               style: Theme.of(context).textTheme.headline2!.copyWith(
//                     color: Colors.white,
//                   ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
