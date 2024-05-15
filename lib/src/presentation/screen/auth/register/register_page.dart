import 'package:firefly_task/src/presentation/screen/auth/register/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAECF0),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffEAECF0),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              alignment: Alignment.center, // Align the content in the center
              child: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
            ),
            const SizedBox(width: 8), // Adding space between icon and text
            const Text("Create Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'NAME',
                  style: TextStyle(
                    color: Color(0xFF040415),
                    fontSize: 12,
                    fontFamily: 'Airbnb Cereal',
                    fontWeight: FontWeight.w700,
                    height: 0.16,
                    letterSpacing: 1,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(
                      color: Color(0xFF040415),
                      fontSize: 18,
                      fontFamily: 'Airbnb Cereal',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xff3BA935) // Specify your desired color here
                          ),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xff3BA935) // Specify your desired color here
                          ),
                    ),
                  
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'SURNAME',
                  style: TextStyle(
                    color: Color(0xFF040415),
                    fontSize: 12,
                    fontFamily: 'Airbnb Cereal',
                    fontWeight: FontWeight.w700,
                    height: 0.16,
                    letterSpacing: 1,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(" Enter your surname"),
                    labelStyle: TextStyle(
                      color: Color(0xFFCDCDD0),
                      fontSize: 18,
                      fontFamily: 'Airbnb Cereal',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xff3BA935) // Specify your desired color here
                          ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xff3BA935) // Specify your desired color here
                          ),
                    ),
                   
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'BIRTHDATE',
                  style: TextStyle(
                    color: Color(0xFF040415),
                    fontSize: 12,
                    fontFamily: 'Airbnb Cereal',
                    fontWeight: FontWeight.w700,
                    height: 0.16,
                    letterSpacing: 1,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("mm/dd/yyyy"),
                    labelStyle: TextStyle(
                      color: Color(0xFFCDCDD0),
                      fontSize: 18,
                      fontFamily: 'Airbnb Cereal',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xff3BA935) // Specify your desired color here
                          ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xff3BA935) // Specify your desired color here
                          ),
                    ),
                   
                  ),
                ),
              ],
            ),
            Button(title: "Next", color: Color(0xFF543B59), icon: "",),
          ],
        ),
      ),
    );
  }
}
