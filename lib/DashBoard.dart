import 'package:flutter/material.dart';
import '/detail.dart';
import '/Favorite.dart';
import 'EditProfile.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffffff),
        title: Text(
          "Sunglasses",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xff000000),
          ),
        ),
        leading: GestureDetector( 
          onTap: () {
            Navigator.pushNamed(context, '/EditProfile'); 
          },
          child: Icon(
            Icons.menu, color: Color(0xff212435), size: 24, 
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Favorite'); 
            },
            child: Icon(
              Icons.favorite_border,
              color: Color(0xff212435),
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Icon(
              Icons.shopping_cart,
              color: Color(0xff212435),
              size: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  obscureText: false,
                  maxLines: 1,
                  style: TextStyle(fontSize: 14, color: Color(0xff000000)),
                  decoration: InputDecoration(
                    hintText: "Search Here..",
                    filled: true,
                    fillColor: Color(0xffebebec),
                    prefixIcon: Icon(Icons.search, color: Color(0xff585858), size: 24),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  children: _buildHorizontalListItems(context),
                ),
              ),
              SizedBox(
                height: 260,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  itemBuilder: (context, position) {
                    return Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/detail');
                          },
                          child: Image.asset(
                            "assets/ucul_kacamata.jpg",
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                     
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                child: Text(
                  "FEATURED BRANDS",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.9,
                ),
                itemCount: _gridItems.length,
                itemBuilder: (context, index) {
                    final item = _gridItems[index];
                    final imagePath = item['imagePath'] ?? '';
                    final title = item['title'] ?? 'Default Title';
                    final subtitle = item['subtitle'] ?? '';

                    return _buildGridItem(imagePath, title, subtitle);
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildHorizontalListItems(BuildContext context) {
    final items = [
      {"imagePath": "assets/1.jpg", "title": "Retro"},
      {"imagePath": "assets/Gentle_Monster.jpg", "title": "Skena"},
      {"imagePath": "assets/kaca.jpg", "title": "Kaca"},
      {"imagePath": "assets/13.jpeg", "title": "Cielo"},
    ];
    return items.map((item) {
      return _buildHorizontalItem(context, item['imagePath']!, item['title']!);
    }).toList();
  }

  Widget _buildHorizontalItem(BuildContext context, String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Detail()),  
        // );
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        width: 100,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imagePath, height: 80, width: 100, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(title, style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }

  final _gridItems = [
    {"imagePath": "assets/Y2k_Snake.jpg", "title": "Upto 15% Off", "subtitle": "Gift On All Orders"},
    {"imagePath": "assets/5.jpg", "title": "Upto 30% Off", "subtitle": "Free CTM Trial Kit On Rs.699"},
    {"imagePath": "assets/skena.jpg", "title": "Complimentary Product", "subtitle": ""},
    {"imagePath": "assets/15.jpeg", "title": "Flat 20% Off", "subtitle": "On All Sunglasses"},
  ];

  Widget _buildGridItem(String imagePath, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(color: Color(0x4d9e9e9e)),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 100, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(title, style: TextStyle(fontSize: 14, color: Color(0xff3a57e8))),
          ),
          if (subtitle.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(subtitle, style: TextStyle(fontSize: 12)),
            ),
        ],
      ),
    );
  }
}
