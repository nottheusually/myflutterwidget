import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:backupcash/dynamic/acc_creat_success.dart';

class UpdatBvn extends StatelessWidget {
  UpdatBvn({super.key});
  final bvnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                // padding: EdgeInsets.all(15),
                width: 340,
                height: 340,
                // margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffFFFFFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Update your BVN',
                          style: GoogleFonts.karla(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Input your BVN',
                          style: GoogleFonts.karla(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 60,
                          width: 275,
                          child: TextFormField(
                            controller: bvnController,
                            keyboardType: TextInputType.number,
                            maxLength: 11,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 90,
                    // ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            ///from here is for the pin
                            
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const AccCrtSuccess()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                // padding: const EdgeInsets.all(),

                                width: MediaQuery.of(context).size.width - 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff4079FF)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Update',
                                      style: GoogleFonts.karla(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xffFFFFFF)),
                                    ),
                                  ),
                                )
                                ),
                          ),
                        ),
                      ],
                    )
                    // const SizedBox(
                    //   height: 10,
                    // ),
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
