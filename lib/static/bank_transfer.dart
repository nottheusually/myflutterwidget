import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:backupcash/static/savemore.dart';
import 'package:dotted_border/dotted_border.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        // backgroundColor: const Color(0xffF5F5F5),
        body: Center(
          child: Container(
            height: 340,
            width: 320,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xffF5F5F5)),
            child: Column(
              children: [
                //container for the amount to transfered
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount ',
                      style: GoogleFonts.mulish(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1A3982)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        // container
                        //container the note information
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(5),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Container(
                              // width: 236,
                              // height: 110,
                              padding: const EdgeInsets.all(5),
                              color: const Color(0xff85A9FF).withOpacity(0.10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Note:',
                                    style: GoogleFonts.karla(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff000000)),
                                  ),
                                  //Row note
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'lib/asset/svg/material-symbols_info.svg'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Minimum value for saving is 500 Naira',
                                        style: GoogleFonts.karla(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff212121)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  //using roo
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'lib/asset/svg/material-symbols_info.svg'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Kindly make payment to the account details',
                                        style: GoogleFonts.karla(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff212121)),
                                      )
                                    ],
                                  ),
                                  //
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0),
                                    child: Text(
                                        'displayed after clicking the button below',
                                        style: GoogleFonts.karla(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff212121))),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'lib/asset/svg/material-symbols_info.svg'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'For Bank transfer, You are required to transfer',
                                        style: GoogleFonts.karla(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff212121)),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0),
                                    child: Text('this exact amount of money',
                                        style: GoogleFonts.karla(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff212121))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 30,
                    // ),

                    ///background: linear-gradient(270deg, #2561EC 57.36%, #5789FF 94.17%);

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // cancel
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: Text(
                              'Cancel',
                              style: GoogleFonts.karla(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff1B315B)),
                            )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),

                          //confirm
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SaveCom()));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff3f5efb),
                                    Color(0xff5789ff)
                                  ],
                                  stops: [1, 1],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                'Confirm',
                                style: GoogleFonts.karla(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffFFFFFF)),
                              )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
