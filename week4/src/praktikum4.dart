/* void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
  print(' ');

  var listNIM = [4, 1, 7, 2, 0, 1, 8, 0];
  var listNIMku = [2, 1, ...listNIM];
  print(listNIMku);

  // bool promoActive = true;
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  String login = 'Mager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
 */

void main() {
  var num = [for (var i = 0; i <= 10; i += 2) i]; //Inisialisasi list dengan Collection For
  print(num);

  var squares = {for (var i = 1; i <= 5; i++) i: i * i}; //Inisialisasi map dengan Collection For
  print(squares); 
}