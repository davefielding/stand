import 'package:flutter/material.dart';
import '../extensions/context_extensions.dart';
import '../l10n/l10n.dart';

Future signInWithFacebook(BuildContext context) async {
  context.showSnackMessage(context.l10n.comingSoon);
  return false;
}

Future signOutWithFacebook() => Future.value(null);
