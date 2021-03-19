// @dart=2.9
import 'package:flutter/material.dart';

import '../auth/firebase_user_provider.dart';
import '../login_page/login_page_widget.dart';
import '../view_stand_ups/view_stand_ups_widget.dart';

class StandFlowHomePage extends StatelessWidget {
  const StandFlowHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<StandFlowFirebaseUser>(
      stream: standFlowFirebaseUser,
      initialData: standFlowFirebaseUser.valueWrapper.value,
      builder: (context, snapshot) {
        return snapshot.data.when(
          user: (_) => const ViewStandUpsWidget(),
          loggedOut: () => LoginPageWidget(),
          initial: () => Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4b39ef)),
              ),
            ),
          ),
        );
      },
    );
  }
}
