import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:backupcash/dynamic/update_bvn.dart';

class CreateVirAcc extends StatefulWidget {
  const CreateVirAcc({super.key});

  @override
  State<CreateVirAcc> createState() => _CreateVirAccState();
}

class _CreateVirAccState extends State<CreateVirAcc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 340,
                width: MediaQuery.of(context).size.width - 20,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFFFFF)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Create Virtual Account',
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff101828)),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: const Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.20),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Important:',
                              style: GoogleFonts.karla(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff52E260)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/asset/svg/material-symbols_infogreen.svg'),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Creating this account allows you or a third-',
                                  style: GoogleFonts.karla(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff1C0734)),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1.0),
                              child: Text(
                                'party to send money to your Instant Save.',
                                style: GoogleFonts.karla(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff1C0734)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            //second content inside the container
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/asset/svg/material-symbols_infogreen.svg'),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Fund your account via external bank ',
                                  style: GoogleFonts.karla(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff1C0734)),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Row(
                                children: [
                                  Text(
                                    'account',
                                    style: GoogleFonts.karla(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff1C0734)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'lib/asset/svg/material-symbols_infogreen.svg'),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'You will be asked to update your BVN if ',
                                  style: GoogleFonts.karla(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff1C0734)),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Row(
                                children: [
                                  Text(
                                    'you haven’t done so',
                                    style: GoogleFonts.karla(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff1C0734)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //message below the container with box shadow
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Do you want to proceed to create ',
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff1C0734)),
                      ),
                      Text(
                        ' a Virtual Account',
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff1C0734)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 78,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: const Color(0xffD0D5DD)),
                            ),
                            child: Center(
                              child: Text(
                                'No',
                                style: GoogleFonts.karla(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff1C0734)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Center(
                                  child: InkWell(
                                    onTap: () {
                                      // Show the popup dialog when the container is pressed
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          // Return the custom dialog content
                                          return UpdatBvn();
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 78,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xff4079FF),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Yes',
                                          style: GoogleFonts.karla(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
