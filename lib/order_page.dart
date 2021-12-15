import 'package:coffe_orders/gender_provider.dart';
import 'package:coffe_orders/size_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GenderProvider>(
      create: (context) => GenderProvider(),
      child: Scaffold(
        backgroundColor: "D1E1E0".toColor(),
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                              width: 21,
                              height: 16,
                              child: Image.asset('assets/Back.png'),
                            ),
                          ),
                          SizedBox(
                            width: 22,
                            height: 6,
                            child: Image.asset('assets/Menu.png'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Image.asset('assets/products.png'),
                      // const SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Caramel Macchiato',
                          style: GoogleFonts.poppins(
                            color: "023E4A".toColor(),
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                          style: GoogleFonts.poppins(
                            color: "687A79".toColor(),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Size',
                        style: GoogleFonts.poppins(
                          color: "000000".toColor(),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Consumer<SizeProvider>(
                      //       builder: (context, sizeProvider, _) =>
                      //           GestureDetector(
                      //         onTap: () {
                      //           sizeProvider.isSize = true;
                      //         },
                      //         child: Container(
                      //           width: 85,
                      //           height: 60,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(6),
                      //             color:sizeProvider.color,
                      //           ),
                      //           child: Center(
                      //             child: Text(
                      //               'S',
                      //               style: GoogleFonts.poppins(
                      //                 color: sizeProvider.textColor,
                      //                 fontWeight: FontWeight.w600,
                      //                 fontSize: 14,
                      //               ),
                      //               textAlign: TextAlign.center,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Consumer<SizeProvider>(
                      //   builder: (context, sizeProvider, _) =>
                      //       GestureDetector(
                      //     onTap: () {
                      //       sizeProvider.isSize = false;
                      //     },
                      //         child: Container(
                      //           width: 85,
                      //           height: 60,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(6),
                      //             color:sizeProvider.color,
                      //           ),
                      //           child: Center(
                      //             child: Text(
                      //               'M',
                      //               style: GoogleFonts.poppins(
                      //                 color: sizeProvider.textColor,
                      //                 fontWeight: FontWeight.w600,
                      //                 fontSize: 14,
                      //               ),
                      //               textAlign: TextAlign.center,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Consumer<SizeProvider>(
                      //       builder: (context, sizeProvider, _) =>
                      //           GestureDetector(
                      //         onTap: () {
                      //           sizeProvider.isSize = false;
                      //         },
                      //         child: Container(
                      //           width: 85,
                      //           height: 60,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(6),
                      //             color:sizeProvider.color,
                      //           ),
                      //           child: Center(
                      //             child: Text(
                      //               'L',
                      //               style: GoogleFonts.poppins(
                      //                 color: sizeProvider.textColor,
                      //                 fontWeight: FontWeight.w600,
                      //                 fontSize: 14,
                      //               ),
                      //               textAlign: TextAlign.center,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Consumer<GenderProvider>(
                        builder: (context, genderProvider, _) =>
                            GestureDetector(
                          onTap: () {
                            genderProvider.isMale = true;
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: genderProvider.maleColor, width: 2)
                                // color: Colors.blue,
                                ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 25,
                                  color: genderProvider.maleColor,
                                ),
                                Text(
                                  'Male',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: genderProvider.maleColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Consumer<GenderProvider>(
                        builder: (context, genderProvider, _) =>
                            GestureDetector(
                          onTap: () {
                            genderProvider.isMale = false;
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: genderProvider.femaleColor,
                                    width: 2)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 25,
                                  color: genderProvider.femaleColor,
                                ),
                                Text(
                                  'Female',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: genderProvider.femaleColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                      const SizedBox(height: 30),
                      Text(
                        'Combo',
                        style: GoogleFonts.poppins(
                          color: "000000".toColor(),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
