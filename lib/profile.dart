  ///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

  import 'package:flutter/material.dart';

  class profile extends StatelessWidget {
    const profile({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          elevation: 4,
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff717db8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          title: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              color: Color(0xffffffff),
            ),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
            size: 24,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child:
                            Image.asset("assets/profile5.jpg", fit: BoxFit.cover),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff6678d3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.photo_camera,
                          color: Color(0xffffffff),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: ListTile(
                    tileColor: Color(0x00ffffff),
                    title: Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff424141),
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "Nadia",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.start,
                    ),
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    selected: false,
                    selectedTileColor: Color(0x42000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    leading:
                        Icon(Icons.person, color: Color(0xff3a57e8), size: 24),
                    trailing:
                        Icon(Icons.edit, color: Color(0xff79797c), size: 22),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Text(
                    "This page cannot be edited if you do not have access to the page",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xffdddddd),
                  height: 30,
                  thickness: 0,
                  indent: 50,
                  endIndent: 0,
                ),
                ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "NoBio",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading: Icon(Icons.info_outline,
                      color: Color(0xff3a57e8), size: 24),
                  trailing: Icon(Icons.edit, color: Color(0xff79797c), size: 22),
                ),
                Divider(
                  color: Color(0xffdddddd),
                  height: 20,
                  thickness: 0,
                  indent: 50,
                  endIndent: 0,
                ),
                ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "Phone",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "+62 889-9115-6626",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading: Icon(Icons.call, color: Color(0xff3a57e8), size: 24),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
