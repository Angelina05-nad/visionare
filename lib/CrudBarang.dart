import 'package:flutter/material.dart';
import 'Favorite.dart';

   class CrudBarang extends StatelessWidget {
   const CrudBarang({super.key});

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Color(0xfffafbfb),
         appBar: AppBar(
         elevation: 3,
         centerTitle: false,
         automaticallyImplyLeading: false,
         backgroundColor: Color(0xffffffff),
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
         ),
         title: Text(
            "Order",
            style: TextStyle(
               fontWeight: FontWeight.w700,
               fontStyle: FontStyle.normal,
               fontSize: 14,
               color: Color(0xff000000),
            ),
         ),
         leading: Icon(
            Icons.arrow_back,
            color: Color(0xff212435),
            size: 24,
         ),
         actions: [
            Icon(Icons.search, color: Color(0xff212435), size: 24),
            Padding(
               padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
               child:
                  Icon(Icons.shopping_cart, color: Color(0xff212435), size: 24),
            ),
         ],
         ),
         body: SizedBox(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Stack(
            alignment: Alignment.topLeft,
            children: [
               Padding(
               padding: EdgeInsets.fromLTRB(16, 16, 16, 80),
               child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete,
                            color: Color(0xfff10202),
                            size: 24,
                          ),
                      ),
                      Padding(
                          padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                          child: Align(
                            alignment: Alignment.center,
                            child:
                                Image(
                            image: AssetImage("assets/11.jpeg"),
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                            ),
                          ),
                      ),
                      Padding(
                          padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Aurora",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                  ),
                                ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                  "Rp550.000",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                  ),
                                  ),
                                  Text(
                                  "/item",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                  ),
                                  ),
                                ],
                            ),
                           ],
                        ),
                     ),
                     Text(
                        "Aurora adalah kacamata yang memancarkan kesan elegan dan unik, terinspirasi dari keindahan cahaya aurora yang memukau. Dengan bingkai berwarna gradasi atau berkilau halus, kacamata ini cocok untuk mereka yang ingin tampil beda dengan sentuhan artistik. Desainnya yang menawan menjadikan Aurora pilihan ideal bagi pecinta gaya yang berani dan penuh pesona.",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontStyle: FontStyle.normal,
                           fontSize: 14,
                           color: Color(0xff000000),
                        ),
                     ),
                     Padding(
                        padding:
                           EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                        child: Text(
                           "Color",
                           textAlign: TextAlign.start,
                           overflow: TextOverflow.clip,
                           style: TextStyle(
                           fontWeight: FontWeight.w700,
                           fontStyle: FontStyle.normal,
                           fontSize: 14,
                           color: Color(0xff000000),
                           ),
                        ),
                     ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                           Chip(
                           labelPadding:
                                 EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                           label: Text("Pink"),
                           labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff3a57e8),
                           ),
                           backgroundColor: Color(0x353a57e8),
                           elevation: 0,
                           shadowColor: Color(0xff808080),
                           shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                           ),
                           ),
                           Padding(
                           padding:
                                 EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                           child: Chip(
                              labelPadding: EdgeInsets.symmetric(
                                 vertical: 0, horizontal: 8),
                              label: Text("Black"),
                              labelStyle: TextStyle(
                                 fontSize: 12,
                                 fontWeight: FontWeight.w700,
                                 fontStyle: FontStyle.normal,
                                 color: Color(0xff000000),
                              ),
                              backgroundColor: Color(0xfff0efef),
                              elevation: 0,
                              shadowColor: Color(0xff808080),
                              shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(6.0),
                              ),
                           ),
                           ),
                           Chip(
                           labelPadding:
                                 EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                           label: Text("Leopard"),
                           labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                           ),
                           backgroundColor: Color(0xfff0efef),
                           elevation: 0,
                           shadowColor: Color(0xff808080),
                           shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                           ),
                           ),
                        ],
                     ),
                     Padding(
                        padding:
                           EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                        child: Text(
                           "items",
                           textAlign: TextAlign.start,
                           overflow: TextOverflow.clip,
                           style: TextStyle(
                           fontWeight: FontWeight.w700,
                           fontStyle: FontStyle.normal,
                           fontSize: 12,
                           color: Color(0xff000000),
                           ),
                        ),
                     ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [

                           Container(
                           alignment: Alignment.center,
                           margin: EdgeInsets.all(0),
                           padding: EdgeInsets.all(4),
                           decoration: BoxDecoration(
                              color: Color(0xfff0efef),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0),
                           ),
                           child: Icon(
                              Icons.remove,
                              color: Color(0xff000000),
                              size: 20,
                           ),
                           ),
                           Padding(
                           padding:
                                 EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                           child: Text(
                              "3",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                 fontWeight: FontWeight.w400,
                                 fontStyle: FontStyle.normal,
                                 fontSize: 16,
                                 color: Color(0xff000000),
                              ),
                           ),
                           ),
                           Container(
                           alignment: Alignment.center,
                           margin: EdgeInsets.all(0),
                           padding: EdgeInsets.all(4),
                           decoration: BoxDecoration(
                              color: Color(0xfff0efef),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0),
                           ),
                           child: Icon(
                              Icons.add,
                              color: Color(0xff000000),
                              size: 20,
                           ),
                           ),
                        ],
                     ), 
                     ],
                  ),
               ),
               ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Favorite'); // Navigasi ke halaman Transaksi
                    },
                    color: Color(0xff3a57e8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Color(0xffffffff), width: 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xffffffff),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ],
         ),
         ),
      );
   }
   }
