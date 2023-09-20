/* void main() {
  var list = List.filled(5, null);
  assert(list.length == 5);
  print(list.length);
  print(list[1]);

  list[1] = 'Magfiroh Indah Karisma';
  list[2] = '2141720180';
  print(list[1]);
  print(list[2]);
  print(list);
} */

void main() {
  List<dynamic> list = List.filled(5, null);
  list[1] = 'Magfiroh Indah Karisma';
  list[2] = '2141720180';
  assert(list.length == 5);
  assert(list[1] is String);
  assert(list[2] is String);
  print(list.length);
  print(list[1]);
  print(list[2]);
  print(list);
}