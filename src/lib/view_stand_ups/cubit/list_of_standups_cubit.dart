// @dart=2.9
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stand/auth/auth_util.dart';
import 'package:stand/backend/backend.dart';

class ListOfStandUpsCubit extends Cubit<List<Standups>> {
  ListOfStandUpsCubit.fromStream(
    Stream<List<Standups>> stream,
  ) : super(<Standups>[]) {
    stream.listen(_updateStandups);
  }

  ListOfStandUpsCubit() : this.fromStream(StandupsProvider().getStandups());

  void _updateStandups(List<Standups> standups) {
    emit(standups);
  }
}

class StandupsProvider {
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
