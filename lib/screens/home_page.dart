import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/home_body.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("Welcome to Mobile Store", style: GoogleFonts.getFont("Almarai"),),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: kPrimaryColor,
        child:  Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: kBackgroundColor,
            ),
            const ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.contact_page,color: Colors.white,),
              title: Text("Contact us"),
            ),
            const ListTile(
              leading: Icon(Icons.help,color: Colors.white,),
              title: Text("About"),
            ),
            Container(
              height: 300.0,
              alignment: Alignment.bottomCenter,
              child: const Text("Created By Omar Ghieh @2022", style: TextStyle(
                color: Colors.white70,
              )),
            )
          ],
        ),
      ),
      body: const HomeBody(),
    );
  }
}
