import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext, BoxConstraints constraints) {
        if (constraints.maxWidth > 720) {
          return webUI(context);
        } else {
          return mobileUI(context);
        }
      },
    ));
  }

  Widget webUI(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: const Image(
                image: AssetImage("assets/pheagle.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 1, 83, 0),
                    Color(0xFF294085),
                  ])),
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * .33,
              child: loginButtons(context))
        ],
      ),
    );
  }

  Stack mobileUI(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Image(
            image: AssetImage("assets/pheagle.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 1, 83, 0),
                  Color(0xFF294085),
                ])),
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Center(child: loginButtons(context))
      ],
    );
  }

  Widget loginButtons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        theButton("Login to Google", MediaQuery.of(context).size.width),
        const SizedBox(
          height: 15,
        ),
        theButton("Login to Twitter", MediaQuery.of(context).size.width),
        const SizedBox(
          height: 15,
        ),
        theButton("Login to Facebook", MediaQuery.of(context).size.width),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Column profileHits(String caption, double number) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          number.toString(),
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        Text(
          caption,
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
      ],
    );
  }

  Widget theButton(String caption, double width) {
    return Container(
      width: width * .75,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            padding:
                MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0))),
        child: Text(
          caption,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
