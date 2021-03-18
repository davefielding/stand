// @dart=2.9
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stand/auth/auth_util.dart';

import '../../data/data.dart';

class ListOfStandUpsCubit extends Cubit<List<StandUp>> {
  ListOfStandUpsCubit.fromStream(
    Stream<List<StandUp>> stream,
  ) : super(<StandUp>[]) {
    stream.listen(_updateStandups);
  }

  ListOfStandUpsCubit() : this.fromStream(StandupsProvider().getStandups());

  void _updateStandups(List<StandUp> standups) {
    emit(standups);
  }
}

class StandupsProvider {
  Stream<List<StandUp>> getStandups() {
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
