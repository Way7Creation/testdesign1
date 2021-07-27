import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Design(),
    );
  }
}

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Publication',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'DiodrumSemibold',
          ),
        ),
        leading: IconButton(
            padding: EdgeInsets.only(left: 10),
            icon: Icon(Icons.close, size: 30, color: Color(0xff22252e)),
            onPressed: () {}),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: 20, left: 10),
              icon: Icon(Icons.search_rounded,
                  size: 35, color: Color(0xff22252e)),
              onPressed: () {}),
          IconButton(
              padding: EdgeInsets.only(right: 30, left: 0),
              icon:
              Icon(Icons.notifications_outlined,
                  size: 35, color: Color(0xff22252e)),
              onPressed: () {}),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child:
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    width: 3,
                    color: Colors.grey.shade200
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'asset/image2.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                'Julia Pro',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                  // fontFamily: 'DiodrumSemibold',
                ),
              ),
              subtitle: Text(
                '5 minutes ago',
                style: TextStyle(fontWeight: FontWeight.w300,
                fontSize: 15),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'asset/image1.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border,
                              color: Color(0xff22252e),
                              size: 30,),
                            SizedBox(width: 5.0),
                            Text(
                              '15',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DiodrumSemibold',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.chat_bubble_outline,
                          color: Color(0xff22252e),
                          size: 30,),
                        SizedBox(width: 5.0),
                        Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DiodrumSemibold',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15, bottom: 5,
                ),
                child: Text(
                  '1 Comment',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 18,
                    // fontFamily: 'DiodrumSemibold',
                  ),
                ),
              ),
              Center(
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  leading: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        'asset/image3.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Vlad Boom',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      // fontFamily: 'DiodrumSemibold',
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Could you tell me where such a cool T-shirt is sold? Looks super stylish',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'at 15:00',
                        style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: Wrap(
                    spacing: 0,
                    children: [
                      Icon(Icons.favorite_border, color: Color(0xff22252e)),
                      SizedBox(
                        width: 0,
                      ),
                      Text('3'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline, color: Color(0xff22252e)),
                      SizedBox(
                        width: 0,
                      ),
                      Text('0'),
                    ],
                  ),
                ),
              ),
            ]),
          ]),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          elevation: 0.0,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xfff0f0f0),
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xff696969),
                size: 40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.tag_faces,
                color: Color(0xff1e1f24),
                size: 40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Color(0xff696969),
                size: 40,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Color(0xff696969),
                size: 40,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
