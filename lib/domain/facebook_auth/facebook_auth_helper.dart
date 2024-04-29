import 'dart:convert';
import 'dart:html';
import 'package:dio/dio.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'facebook_user.dart';

class FacebookAuthHelper {
  final _dio = Dio(BaseOptions(connectTimeout: const Duration(seconds: 60)));
}

///handle facebook sign in user to authenticate user

Future<FacebookUser> facebookSignInProcess() async {
  final facebookLogin = FacebookLogin();
  final facebookLoginResult = await facebookLogin.LogIn(Permissions: [
    FacebookPermission.publicProfile,
    FacebookPermission.email,
  ]);
  return fetchUserProfile(facebookLoginResult.accessToken!.token);
}

// method to fetch logged in user profile

Future<FacebookUser> fetchUserProfile(String token) async {
  final graphResponse = await _dio.get(
      'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$token');
  final profile = json.decode(graphResponse.data);
  return FacebookUser.fromMap(profile);
}

//to sign out from the app if the user signed in through facebooik
void facebookSignOutProcess() async {
  final facebookLogin = FacebookLogin();
  final facebookLoginResult = await facebookLogin.logOut();

  return facebookLoginResult;
}
