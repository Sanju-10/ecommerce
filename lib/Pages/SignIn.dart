import 'package:ecommerce/Pages/Home.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Stack(
          children: [
            Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.grey.shade200,
              //AppBar
              appBar: AppBar(
                title: Image.asset('assets/images/shop.jpg'),
                backgroundColor: Colors.white,
                bottom: TabBar(
                  indicatorColor: Colors.deepOrange,
                  indicatorWeight: 5.0,
                  indicatorPadding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  tabs: [
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              //Body

              body: TabBarView(
                children: [
                  //Login Screen
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/shop.jpg'))),
                        ),

                        //Email Address
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Email Address',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.30),
                              hintText: 'ruwanthithamali@gmail.com',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              fillColor: Colors.grey.shade300,
                              filled: true),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter an email address';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 10.0,
                        ),

                        //Password

                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.30),
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              fillColor: Colors.grey.shade300,
                              filled: true),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter an email address';
                            }
                            return null;
                          },
                        ),

                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Forgot Passcode?',
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ),
                        ),

                        //Button
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(30.0)),
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Center(
                                  child: Text(
                                'LogIn',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //SignUp Screen
                  Form(
                    key: _formKey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/shop.jpg'))),
                        ),

                        //Email Address
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Email Address',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.30),
                              hintText: 'ruwanthithamali@gmail.com',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              fillColor: Colors.grey.shade300,
                              filled: true),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter an email address';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 10.0,
                        ),

                        //Password

                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.30),
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              fillColor: Colors.grey.shade300,
                              filled: true),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter an email address';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 10.0,
                        ),

                        //Confirm Password

                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.30),
                              hintText: 'Retype Your Password',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              fillColor: Colors.grey.shade300,
                              filled: true),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter an email address';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 15.0,
                        ),

                        //Button
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(30.0)),
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Center(
                                  child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
