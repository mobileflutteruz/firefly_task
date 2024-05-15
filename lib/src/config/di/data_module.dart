import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

}
