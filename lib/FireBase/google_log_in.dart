// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoggleSignin extends StatefulWidget {
  const GoggleSignin({Key? key}) : super(key: key);

  @override
  State<GoggleSignin> createState() => _GoggleSigninState();
}

class _GoggleSigninState extends State<GoggleSignin> {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                GoogleSignInAccount? account = await googleSignIn.signIn();

                GoogleSignInAuthentication authentication =
                    await account!.authentication;

                AuthCredential credential = GoogleAuthProvider.credential(
                    accessToken: authentication.accessToken,
                    idToken: authentication.idToken);

                UserCredential userCredential =
                    await auth.signInWithCredential(credential);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Login Success..."),
                  ),
                );

                print('${userCredential.user!.email}');
                print(userCredential.user!.uid);
                print('${userCredential.user!.displayName}');
                print('${userCredential.user!.photoURL}');
              },
              child: const Text('GOOGLE'),
            ),
            ElevatedButton(
              onPressed: () async {
                await googleSignIn.signOut();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Logout Success..."),
                  ),
                );
              },
              child: const Text('LOGOUT'),
            ),
          ],
        ),
      ),
    );
  }
}
