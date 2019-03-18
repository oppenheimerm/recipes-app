import 'package:flutter/material.dart';
import 'package:recipes_app/ui/widgets/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //  Build background image
    BoxDecoration _buildBackground(){
      return BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/brooke-lark-385507-unsplash.jpg"),
        fit: BoxFit.cover,
        )
      );
    }

    Text _buildText() {
      return Text(
        'Recipes',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(

      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              // Space between "Recipes" and the button:
              SizedBox(height: 50.0),
              GoogleSignInButton(
                onPressed: () =>
                // We replace the current page.
                // After navigating to the replacement, it's not possible
                // to go back to the previous screen:
                Navigator.of(context).pushReplacementNamed('/'),
              ),
            ],
          ),
        ),
      ),


    );
  }
}