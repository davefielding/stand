import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'firebase_user_provider.freezed.dart';

@freezed
abstract class StandFlowFirebaseUser implements _$StandFlowFirebaseUser {
  factory StandFlowFirebaseUser.user(User user) = _User;
  factory StandFlowFirebaseUser.loggedOut() = _LoggedOut;
  factory StandFlowFirebaseUser.initial() = _Initial;
}

bool loggedIn = false;

final standFlowFirebaseUser = FirebaseAuth.instance
    .userChanges()
    .debounce((user) => user == null && !loggedIn ? TimerStream(true, const Duration(seconds: 1)) : Stream.value(user))
    .map<StandFlowFirebaseUser>((user) {
  loggedIn = user != null;
  return user != null ? StandFlowFirebaseUser.user(user) : StandFlowFirebaseUser.loggedOut();
}).shareValueSeeded(StandFlowFirebaseUser.initial());

StandFlowFirebaseUser get currentUser => standFlowFirebaseUser.value ?? StandFlowFirebaseUser.loggedOut();
