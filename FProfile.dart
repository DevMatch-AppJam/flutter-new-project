import 'package:app_jam/flutter_new_project.dart';
import 'package:app_jam/home_page.dart';
import 'package:app_jam/proje_ara_flutter.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';

class FProfilim extends StatefulWidget {
  const FProfilim({Key? key}) : super(key: key);

  @override
  State<FProfilim> createState() => _FProfilimState();
}

class _FProfilimState extends State<FProfilim> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(title: Text('Profilim')),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.purple.shade300),
                  width: 420,
                  height: 230,
                ),
                Positioned(left: 380, top: 200, child: Icon(Icons.edit)),
                Positioned(
                  left: 150,
                  top: 130,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: Image.asset(
                      'images/aa.jpg',
                      fit: BoxFit.cover,
                    ).image,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'TUĞBA YILDIZ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Theme(
              data: ThemeData(primarySwatch: Colors.lime),
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.blueAccent)),
                //
                child: Row(
                  children: [
                    Text(
                      'Mail:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'tugbaay@gmail.com',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Theme(
              data: ThemeData(primarySwatch: Colors.lime),
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.blueAccent)),
                //
                child: Row(
                  children: [
                    Text(
                      'Alan:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Theme(
              data: ThemeData(primarySwatch: Colors.lime),
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.blueAccent)),
                //
                child: Row(
                  children: [
                    Text(
                      'Şehir:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Adana',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Theme(
              data: ThemeData(primarySwatch: Colors.lime),
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.blueAccent)),
                //
                child: Row(
                  children: [
                    Text(
                      'Bölüm:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Yazılım Mühendisliği',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(30, 50),
                      backgroundColor: Colors.grey.shade800),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FlutterNewProject()));
                  },
                  child: Text(
                    'Proje Oluştur',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(30, 50),
                      backgroundColor: Colors.grey.shade800),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProjeAraPageF()));
                  },
                  child: Text(
                    'Projeye Katıl',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            ]),
          ],
        ),
      ),
    ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Material(
        color: Colors.deepOrange,
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, bottom: 24),
          child: Row(
            children: const [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage('images/aa.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tuğba Yıldız',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('tugbaay@gmail.com',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(15),
        child: Wrap(
          runSpacing: 6,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Anasayfa'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Draw())),
            ),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profilim'),
                onTap: () => {
                      //Navigator.pop(context),
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Draw())),
                    }),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Flutter Projesi Oluştur'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Draw())),
            ),
            ListTile(
                leading: const Icon(Icons.plus_one),
                title: const Text('Flutter Projesine Katıl'),
                onTap: () => {
                      //Navigator.pop(context),
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Draw())),
                    }),
            ListTile(
              leading: const Icon(Icons.info_sharp),
              title: const Text('Hakkımızda'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutUs())),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Çıkış'),
            ),
          ],
        ),
      );
}
