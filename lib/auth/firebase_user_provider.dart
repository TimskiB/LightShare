import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LightShareProtoFirebaseUser {
  LightShareProtoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

LightShareProtoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LightShareProtoFirebaseUser> lightShareProtoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LightShareProtoFirebaseUser>(
            (user) => currentUser = LightShareProtoFirebaseUser(user));
