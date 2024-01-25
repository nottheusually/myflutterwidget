import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:backupcash/static/bank_transfer.dart';

class AccCrtSuccess extends StatefulWidget {
  const AccCrtSuccess({super.key});

  @override
  State<AccCrtSuccess> createState() => _AccCrtSuccessState();
}

class _AccCrtSuccessState extends State<AccCrtSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                width: 320,
                height: 364,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFFFFF)),
                child: Column(
                  children: [
                    Text(
                      'Account Creation was Successful',
                      style: GoogleFonts.karla(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff101828)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Your Name is',
                      style: GoogleFonts.karla(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    Container(
                      height: 45,
                      width: 174,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff084074).withOpacity(0.1)),
                      child: Center(
                        child: Text(
                          'ENNI BARDII',
                          style: GoogleFonts.karla(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff084074)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Your Bank Name is',
                      style: GoogleFonts.karla(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    Container(
                      height: 45,
                      width: 174,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff084074).withOpacity(0.1)),
                      child: Center(
                        child: Text(
                          'WEMA BANK',
                          style: GoogleFonts.karla(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff084074)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Your Account Number  is',
                      style: GoogleFonts.karla(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    Container(
                      height: 45,
                      width: 174,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff084074).withOpacity(0.1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '7700110055',
                            style: GoogleFonts.karla(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff084074)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Copy text to clipboard when icon is clicked
                              Clipboard.setData(
                                  const ClipboardData(text: '7700110055'));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Account number copied to clipboard'),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.copy_rounded,
                              size: 15,
                              color: Color(0xff084074),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bank()));
                      },
                      child: Container(
                        height: 42,
                        width: 289,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff4079FF)),
                        child: Center(
                          child: Text(
                            'Done',
                            style: GoogleFonts.karla(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
