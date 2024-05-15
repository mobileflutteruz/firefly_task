import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthRepository {
  const AuthRepository(
    this._auth,
  );

  final FirebaseAuth _auth;

  String handleAuthError(dynamic error) {
    String errorMessage = 'An error occurred';
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email.';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password provided for this user.';
          break;
        case 'user-disabled':
          errorMessage = 'This user has been disabled. Please contact support.';
          break;
        default:
          errorMessage = error.message ?? 'An unknown error occurred.';
          break;
      }
    }
    return errorMessage;
  }

  Future<User?> signIn(String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    final user = credential.user!;

    return credential.user;
  }

  Future<User?> signUp({
    required String email,
    required String password,
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password,

    );
    final user = credential.user!;
    return user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future deleteAccount(String password) async {
    await _auth.signInWithEmailAndPassword(
        email: user!.email!, password: password);
    final uid = user!.uid;
    await _auth.currentUser!.delete();
    // final folder = _database.ref(Folder.parent);
    // await folder.child(uid).remove();
  }

  Future<void> forgotPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      print('Password reset email sent successfully');
    } catch (e) {
      // An error occurred
      print('Failed to send password reset email: $e');
      // Handle error (e.g., display error message to the user)
    }
  }

  User? get user => _auth.currentUser;
}
