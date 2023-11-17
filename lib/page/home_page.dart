import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
        backgroundColor: Color(0xFF1E0072),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/persegi.png", title: "Persegi"))),
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                    },
                      child: CustomMenu(
                      imageAsset: "assets/persegi_panjang.jpg", title: "PersegiPanjang"))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                    },
                    child: CustomMenu(
                      imageAsset: "assets/segitiga.png", title:"Segitiga",
                    ),
                      )),
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                    },
                      child: CustomMenu(
                      imageAsset: "assets/lingkaran.png", title: "Lingkaran"))),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.deepPurple,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              height: 150,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
