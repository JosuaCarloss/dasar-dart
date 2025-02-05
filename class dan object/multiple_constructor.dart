void main() {
  RekeningBank rekeningjosua = new RekeningBank();
  rekeningjosua.namaPemilik = 'josua';
  rekeningjosua.namaBank = 'BRI';
  rekeningjosua.saldo = 1000000;

  print(rekeningjosua.saldo);
  print(rekeningjosua.namaBank);
  print(rekeningjosua.namaPemilik);

  rekeningjosua.ceksaldo();
  print('-------------------------');

  // membuat objek baru
  RekeningBank rekeningela = new RekeningBank(
      namaPemilik: 'josua', namaBank: 'BNI', saldo: 50000000);

  print(rekeningela.namaPemilik);
  print(rekeningela.namaBank);
  print(rekeningela.saldo);
  rekeningela.ceksaldo();
  print('---------------------');

  RekeningBank rekeningcarlos = new RekeningBank(
    namaPemilik: 'carlos',
    namaBank: 'Bank Syariah',
    saldo: 15000000,
  );

  print(rekeningcarlos.getPemilik);
  print(rekeningcarlos.getBank);
  print(rekeningcarlos.saldo);
  rekeningcarlos.setSaldo = 25000000;
  print(rekeningcarlos.saldo);
  rekeningcarlos.setNamaPemilik = 'carlos';
  rekeningcarlos.setNamaBank = 'BCA';
  print(rekeningcarlos.getPemilik);
  print(rekeningcarlos.getBank);
  print(rekeningcarlos.getSaldo);
  print('---------------------');

  // membuat objek baru untuk multiple constructor
  // jika .Mandiri nya dihilangkan maka nilai nya akan null
  RekeningBank rekeningMandiri =
      new RekeningBank.Mandiri(namaPemilik: 'Bank Mandiri', saldo: 50000000);
  print(rekeningMandiri
      .getBank); //akan ditetapkan menjadi Mandiri karena nilai Bank nya tidak diisi
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  int saldo;

  // membuat set getter setter
  set setNamaPemilik(var nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String namabank) {
    this.namaBank = namabank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional
  RekeningBank({this.namaPemilik, this.namaBank, this.saldo = 0});

  /*membuat multiple constructor, ini adalah class barunya
  disini akan dibuat jika nama bank nya tidak diisi maka nilai bank nya akan otomatis 'Mandiri'*/
  RekeningBank.Mandiri(
      {this.namaPemilik, this.namaBank = 'Mandiri', this.saldo = 0});

  ceksaldo() {
    print('Saldo saat ini adalah : $saldo');
  }

  transfer() {
    print('Transfer ');
  }

  ambilsaldo() {
    print('ambil saldo');
  }
}
