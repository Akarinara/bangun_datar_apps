// import 'dart:ffi';
import 'package:bangun_datar_kelas_b/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});

  PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PersegiPanjangPage"),
      ),
      body: Column(
        children: [
          Image.asset(
            "asset/persegi panjang.jpg",
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi Panjang",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku")),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _persegiPanjangController.panjang = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan Panjang",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      _persegiPanjangController.lebar = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Luas",
                        hintText: "Masukkan Luas",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              _persegiPanjangController.hitungLuas();
                            },
                            child: const Text(
                              "Hitung luas",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              _persegiPanjangController.hitungKeliling();
                            },
                            child: const Text(
                              "Hitung keliling",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow))),
                      ),
                    ]),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Obx(() => Text(
              _persegiPanjangController.hasil.value,
              style: TextStyle(color: _persegiPanjangController.textColor.value),
            )),
          ),
        ],
      ),
    );
  }
}