// @dart=2.9
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stand/auth/auth_util.dart';
import 'package:stand/view_stand_ups/stand_up_card.dart';

import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../view_stand_up_page/view_stand_up_page_widget.dart';

class ListOfStandUpsCubit extends Cubit<List<Standups>> {
  ListOfStandUpsCubit(Stream<List<Standups>> stream) : super(<Standups>[]) {
    stream.listen(_updateStandups);
  }

  void _updateStandups(List<Standups> standups) {
    emit(standups);
  }
}

class ViewStandUpsWidget extends StatelessWidget {
  const ViewStandUpsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListOfStandUpsCubit(getStandups()),
      child: ViewStandUpsView(),
    );
  }

  Stream<List<Standups>> getStandups() {
    return queryStandups(queryBuilder: defineStandupsQuery);
  }

  Query defineStandupsQuery(Query query) {
    return query.where(
      'roles.$currentUserUid',
      whereIn: [
        'owner',
        'editor',
        'reader',
      ],
    );
  }
}

class ViewStandUpsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = context
        .select((ListOfStandUpsCubit cubit) => cubit.state)
        .map((standup) => buildStandUpCard(context, standup))
        .toList()
          ..insert(0, buildAddNewStandUpButton(context));

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 90,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              alignment: const Alignment(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STAND',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.title1,
                        ),
                        Text(
                          'Manage Agile Stand-Ups',
                          style: FlutterFlowTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1586892477901-f70e288a7318?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8c2NydW18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: children,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildAddNewStandUpButton(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ViewStandUpPageWidget(),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.tertiaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add New Stand Up',
              style: FlutterFlowTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }

  Widget buildStandUpCard(BuildContext context, Standups standup) {
    return StandUpCard(
      title: standup.name,
      subtitle: 'TBD',
      image: NetworkImage(standup.imagePath),
      onTap: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ViewStandUpPageWidget(),
          ),
        );
      },
      onDelete: () {
        print('Delete pressed ...');
      },
      onShare: () {
        print('Share pressed ...');
      },
    );
  }

  Widget buildDemoStandUpCard(BuildContext context) {
    return StandUpCard(
      title: 'Da StandUp',
      subtitle: '5 Members',
      image: const NetworkImage(
          'https://images.unsplash.com/photo-1575535468632-345892291673?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
      onTap: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ViewStandUpPageWidget(),
          ),
        );
      },
      onDelete: () {
        print('Delete pressed ...');
      },
      onShare: () {
        print('Share pressed ...');
      },
    );
  }
}
