import 'dart:io';
import 'dart:math';

void main() {
  double angka1 = getInput("Masukkan angka pertama (default: 0): ");
  double angka2 = getInput("Masukkan angka kedua (default: 0) : ");
  String operasi = getOperation();
  double hasil = calculate(angka1, angka2, operasi);
  print('Hasil : $hasil');
}

double getInput(String message) {
  stdout.write(message);
  String? input = stdin.readLineSync();
  if (input == "") {
    input = "0";
  }
  return double.parse(input!);
}

String getOperation() {
  stdout.write('''Pilih operasi: 
1. Penjumlahan
2. Pengurangan
3. Perkalian
4. Pembagian
5. Modulus
6. Pangkat
7. Akar
''');
  return stdin.readLineSync()!;
}

double calculate(double angka1, double angka2, String operasi) {
  switch (operasi) {
    case '1':
      return angka1 + angka2;
    case '2':
      return angka1 - angka2;
    case '3':
      return angka1 * angka2;
    case '4':
      return angka1 / angka2;
    case '5':
      return angka1 % angka2;
    case '6':
      for (int i = 1; i < angka2; i++) {
        angka1 *= angka1;
      }
      return angka1;
    case '7':
      if (angka1 == 0) {
        return sqrt(angka2);
      } else{
        return sqrt(angka1);
      }
    default:
      print('Operasi tidak valid');
      return 0.0;
  }
}
