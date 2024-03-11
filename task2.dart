import 'dart:io';

void main() {
  List<int> daftarAngka = [];
  double hasilRataRata = hitungRataRata(daftarAngka);
  print('Rata-rata dari bilangan yang dimasukkan adalah: $hasilRataRata');
}

double hitungRataRata(List<int> daftarAngka) {
  bool isTrue = true;
  double hasil = 0;
  while (isTrue) {
    stdout.write("Masukkan bilangan (tekan Enter untuk selesai): ");
    String? input = stdin.readLineSync();
    if (input == "") {
      isTrue = false;
    }
    else{
      int elemen = int.parse(input!);
      daftarAngka.add(elemen);
    }
  }
  daftarAngka.forEach((element) {
    hasil += element;
  });
  return hasil/daftarAngka.length;
}
