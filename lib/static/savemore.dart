import 'dart:async';
import 'package:svg_flutter/svg.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveCom extends StatefulWidget {
  const SaveCom({super.key});

  @override
  State<SaveCom> createState() => _SaveComState();
}

class _SaveComState extends State<SaveCom> {
  int _secondsRemaining = 30 * 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          timer.cancel(); // Stop the timer when countdown reaches 0
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),

                //backup cash logo
                Image.asset('lib/asset/png/Logo@2x 1.png'),
                // SvgPicture.asset('lib/asset/svg/Logo@2x 1.svg'),
                const SizedBox(
                  height: 10,
                ),
                //first container
                Container(
                  height: 717,
                  width: 343,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: Color(0xffFFFFFF)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),

                      Text(
                        'Transfer NGN 500 to Paystack \n Checkout',
                        style: GoogleFonts.karla(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      //secod conatiner
                      Container(
                        height: 245,
                        width: 283,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: const Color(0xffF5F5F5)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bank Name',
                                style: GoogleFonts.karla(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333)),
                              ),
                              Text(
                                'WEMA BANK',
                                style: GoogleFonts.karla(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff333333)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Account Number',
                                style: GoogleFonts.karla(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '7075751655',
                                    style: GoogleFonts.karla(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff333333),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Copy text to clipboard when icon is clicked
                                      Clipboard.setData(const ClipboardData(
                                          text: '7075751655'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Account number copied to clipboard'),
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.content_copy,
                                      color: Color(0xff9C9C9C),
                                      size: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Account Name',
                                style: GoogleFonts.karla(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333)),
                              ),
                              Text(
                                'Backup Cash Fund',
                                style: GoogleFonts.karla(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff333333)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Amount',
                                style: GoogleFonts.karla(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'N5,00',
                                    style: GoogleFonts.karla(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff333333),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Copy text to clipboard when icon is clicked
                                      Clipboard.setData(
                                          const ClipboardData(text: 'N5,00'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Amount copied to clipboard'),
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.content_copy,
                                      color: Color(0xff9C9C9C),
                                      size: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //out of the second container back to first container
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Use this account for this transaction  only',
                        style: GoogleFonts.karla(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Image.asset('lib/asset/png/mdi_bank-circle.png'),
                      SvgPicture.asset('lib/asset/svg/Vector.svg'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Expire in',
                            style: GoogleFonts.karla(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff1C0734)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '$minutes:${seconds.toString().padLeft(2, '0')}',
                            style: GoogleFonts.karla(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff25892F)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 285,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border:
                                  Border.all(color: const Color(0xff1C0734))),
                          child: Center(
                            child: Text(
                              'I have sent the money',
                              style: GoogleFonts.karla(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff1C0734)),
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
        ),
      ),
    );
  }
}
