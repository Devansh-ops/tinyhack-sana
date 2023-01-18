import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiny_hack/constants.dart';
import 'package:tiny_hack/screen/pages/sign_up/sign_up2.dart';
import 'package:tiny_hack/size_config.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _arts = [
    "Digital Art",
    "Vocal Music",
    "Instrumental Music",
    "Sports",
    "Multimedia",
  ];

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
              child: Image.asset(
                "assets/logo1.jpg",
                width: 30,
                height: 30,
              ),
            ),

            const SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Add your name",style: TextStyle(color: Colors.black,fontSize: 30),),

                  const SizedBox(height: 50,),

                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "First Name"
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Last Name"
                    ),
                  ),

                  const SizedBox(height: 20,),

                  // FormField<String>(
                  //   builder: (FormFieldState<String> state) {
                  //     return InputDecorator(
                  //       decoration: InputDecoration(
                  //
                  //           errorStyle: TextStyle(color: kPrimaryColor, fontSize: 16.0),
                  //           hintText: 'Please select',
                  //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                  //       // isEmpty: _currentSelectedValue == '',
                  //       child: DropdownButtonHideUnderline(
                  //         child: DropdownButton<String>(
                  //           // value: _currentSelectedValue,
                  //           isDense: true,
                  //           onChanged: (String newValue) {
                  //             setState(() {
                  //               _currentSelectedValue = newValue;
                  //               state.didChange(newValue);
                  //             });
                  //           },
                  //           items: _arts.map((String value) {
                  //             return DropdownMenuItem<String>(
                  //               value: value,
                  //               child: Text(value),
                  //             );
                  //           }).toList(),
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),

                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Talent"
                    ),
                  ),

                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50),
                    child: ElevatedButton(

                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: const BorderSide(color: kPrimaryColor)
                              )
                          )
                      ),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp2(),
                          )),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
              ],
              ),
            )



          ],
        ),
      ),
    ));
  }
}
