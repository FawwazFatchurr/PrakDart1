import 'dart:io';
import 'dart:math';

void main() {
  print("===== Kalkulator Ilmiah Sederhana =====");
  print("Operator: +, -, *, /, pow (pangkat), sqrt (akar)");

  try {
    print("\nMasukkan operator:");
    String? operator = stdin.readLineSync();

    double hasil;

    if (operator == 'sqrt') {
      print("Masukkan angka:");
      String? input1 = stdin.readLineSync();
      double angka1 = double.parse(input1 ?? '0');

      hasil = sqrt(angka1);
      print("==============================");
      print("Hasil: sqrt($angka1) = $hasil");
    } else if (operator == 'pow') {
      print("Masukkan angka (basis):");
      String? input1 = stdin.readLineSync();
      double angka1 = double.parse(input1 ?? '0');

      print("Masukkan pangkat (eksponen):");
      String? input2 = stdin.readLineSync();
      double angka2 = double.parse(input2 ?? '0');

      hasil = pow(angka1, angka2).toDouble();
      print("==============================");
      print("Hasil: $angka1 ^ $angka2 = $hasil");
    } else if (operator == '+' ||
        operator == '-' ||
        operator == '*' ||
        operator == '/') {
      print("Masukkan angka pertama:");
      String? input1 = stdin.readLineSync();
      double angka1 = double.parse(input1 ?? '0');

      print("Masukkan angka kedua:");
      String? input2 = stdin.readLineSync();
      double angka2 = double.parse(input2 ?? '0');

      if (operator == '+') {
        hasil = angka1 + angka2;
      } else if (operator == '-') {
        hasil = angka1 - angka2;
      } else if (operator == '*') {
        hasil = angka1 * angka2;
      } else {
        if (angka2 == 0) {
          throw Exception("Error: Tidak bisa membagi dengan nol.");
        }
        hasil = angka1 / angka2;
      }
      print("==============================");
      print("Hasil: $angka1 $operator $angka2 = $hasil");
    } else {
      throw Exception("Error: Operator '$operator' tidak dikenal.");
    }
  } catch (e) {
    print("\nTerjadi kesalahan!");
    print(e.toString());
  }
}
