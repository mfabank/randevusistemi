import 'package:flutter/material.dart';
import 'loginregisterpage.dart';



class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blueGrey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_960_720.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Text(
                  "Muhammed Fatih AKTAŞ",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  "muhammedfatihaktass@gmail.com",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profil",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("Profili düzenle"),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Ayarlar",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("Bildirim ayarları"),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              "Çıkış",
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginRegisterPage()));
            },
          ),
        ],
      ),
    );
  }
}
