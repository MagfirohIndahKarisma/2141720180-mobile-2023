void main() {
  var record = (2, 5);
  print(record);

  var cobatukar = (tukar(record));
  print(cobatukar);

  (String, int) mahasiswa;
  mahasiswa = ('Magfiroh Indah Karisma', 2141720180);
  print(mahasiswa);

  var mahasiswa2 = ('Magfiroh Indah Karisma', a: 2141720180, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}