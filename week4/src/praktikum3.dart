void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'third': 'magfirohindah',
    'fourth': '2141720180',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    20: 'magfirohindah',
    21: 2141720180,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['third'] = 'magfirohindahkarisma';
  gifts['fourth'] = '2141720180';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'magfirohindahkarisma';
  nobleGases[21] = '2141720180';

  print(gifts);
  print(nobleGases);
}