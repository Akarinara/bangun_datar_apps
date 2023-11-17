import "package:flutter/material.dart";
// import 'dart:ffi';
import "package:get/get.dart";

class PersegiPanjangController extends GetxController{
  int panjang =0;
  int lebar =0;
  int dua = 2;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan Luas dari $panjang * $lebar = $hitung";
    textColor.value = Colors.black;
  }

  void hitungKeliling(){
    int hitung = 2 * (panjang + lebar);
    hasil.value = "Hasil Keliling dari $dua * $panjang + $lebar = $hitung";
    textColor.value = Colors.black;
  }
}