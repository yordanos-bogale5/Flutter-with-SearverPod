import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthHelper {
  //handiling google sign in to authenticate the user

  Future<GoogleSignInAccount?> GoogleSignInProcess() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      return googleUser;
    }
    return null;
  }

  // to check the user is already signed in through google
  alreadySignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    bool alreadySignIn = await googleSignIn.isSignedIn();
    return alreadySignIn;
  }
  // to sign out from the app if the user signed in through google

  Future<GoogleSignInAccount?> GoogleSignOutProcess() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signOut();
    return googleUser;
  }
}
