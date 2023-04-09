import 'package:flutter/material.dart';

class Profilim extends StatefulWidget {
  const Profilim({Key? key}) : super(key: key);

  @override
  State<Profilim> createState() => _ProfilimState();
}

class _ProfilimState extends State<Profilim> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
                  height: 285,
                ),
                Positioned(left: 380, top: 250, child: Icon(Icons.edit)),
                Positioned(
                  left: 150,
                  top: 180,
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
          ],
        ),
      ),
    ));
  }
}
