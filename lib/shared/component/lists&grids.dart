import 'package:flutter/material.dart';
import 'package:sho_app/models/building_models.dart';
import 'package:sho_app/models/projects_models.dart';
import 'package:sho_app/modules/building_screen/building_screen.dart';
import 'package:sho_app/modules/work_screen/services_screen1.dart';
import 'package:sho_app/shared/component/constants.dart';

class MenuList extends StatelessWidget {
  final double? height;
  final double? width;
  final int? index;

  final ProjectsModel? list;

  const MenuList({
    this.index,
    this.list,
    this.width = double.infinity,
    this.height = 200,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  '${list!.imageUrl}',
                ),
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: MaterialButton(
              onPressed: () {
                navigateTo(context, BuildingScreen());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'فال ${index! + 13}',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildingGridView extends StatelessWidget {
  final double? height;
  final double? width;
  final int? index;

  final BuildingModel? list;

  const BuildingGridView({
    this.index,
    this.list,
    this.width = 190,
    this.height = 190,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                '${list!.imageUrl}',
              ),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: MaterialButton(
            onPressed: () {
              navigateTo(context, Services1Screen());
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'مبني ${index! + 13}',
            style: Theme.of(context).textTheme.headline2!.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}