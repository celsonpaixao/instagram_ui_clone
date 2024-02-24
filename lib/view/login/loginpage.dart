import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intagram_clone/view/home/mainpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Intagram Logo
                    SvgPicture.asset('assets/images/Instagram Logo.svg'),

                    // User Logo
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/las.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    // User Name
                    Text(
                      'celsonpaixa0',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),

                    // Login Button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFF3797EF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),));
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainPage(),), (route) => false);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            )),
                      ),
                    ),

                    // Text Switch accounts
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Switch accounts',
                        style: TextStyle(
                            color: Color(0xFF3797EF),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Divider(
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      GestureDetector(
                        child: Text(
                          ' Sign up.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
