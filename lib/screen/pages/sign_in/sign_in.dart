import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiny_hack/constants.dart';
import 'package:tiny_hack/screen/pages/forget_password/forget_password.dart';
import 'package:tiny_hack/screen/pages/home.dart';
import 'package:tiny_hack/size_config.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            // width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Image.asset(
                        "assets/logo2.jpg",
                        width: 30,
                        height: 30,
                      ),

                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text("Join now",style: TextStyle(color: kPrimaryColor,fontSize: 16),),
                      )

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Text("Sign in",style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                      const SizedBox(height: 30,),

                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: "Email"

                        ),
                      ),

                      SizedBox(height: 20,),

                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password"
                        ),
                      ),


                      SizedBox(height: 20,),


                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(

                              value: remember,
                              activeColor: Colors.green[900],
                              onChanged: (value) {
                                setState(() {
                                  remember = value!;
                                });
                              },
                            ),

                            Text("Remember me.",style: TextStyle(fontSize: 16,color:Colors.grey[800]),),

                            SizedBox(width: 10,),

                            Text("Learn more",style: TextStyle(color: kPrimaryColor,fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => ForgetPassword(),
                            )),
                          child: Text("Forget Password?",style: TextStyle(color: kPrimaryColor,fontSize: 14,fontWeight: FontWeight.bold),)),

                      SizedBox(height: 15,),


                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(55),
                        child: ElevatedButton(

                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: kPrimaryColor)
                                  )
                              )
                          ),
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => MobileScreen(),
                              )),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [

                           SizedBox(height: 0.3,width: 100,child: Container(decoration: BoxDecoration(color: Colors.black),),),

                           Text('OR'),

                           SizedBox(height: 0.3,width: 100,child: Container(decoration: BoxDecoration(color: Colors.black),),)
                         ],
                       ),


                      SizedBox(height: 20,),


                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(55),
                        child: ElevatedButton(

                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: kPrimaryColor)
                                  )
                              )
                          ),
                          onPressed: () {  },
                          child:
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 60,),
                              SvgPicture.asset(
                                "assets/icons-google.svg",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 10,),

                              Text(
                                "Sign in with Google",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),


                      SizedBox(height: 20,),



                    ],
                  ),
                )



              ],
            ),
          ),
        ));
  }
}
