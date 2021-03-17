// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../backend/backend.dart';
import '../view_stand_up_page/view_stand_up_page_widget.dart';
import '../widgets/stand_app_bar.dart';
import 'add_new_stand_ups_button.dart';
import 'cubit/list_of_standups_cubit.dart';
import 'stand_up_card.dart';

class ViewStandUpsWidget extends StatelessWidget {
  const ViewStandUpsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListOfStandUpsCubit(),
      child: ViewStandUpsView(),
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
          ..insert(0, AddNewStandUpButton(context: context));

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const StandAppBar(),
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

  Widget buildStandUpCard(BuildContext context, Standups standup) {
    return StandUpCard.fromStandup(
      standup,
      onTap: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ViewStandUpPageWidget(standup),
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
