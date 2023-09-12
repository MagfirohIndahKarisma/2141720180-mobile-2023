void main() {
  for (int n = 2; n <= 201; n++) {
    if (bilPrima(n)) {
      print("$n Magfiroh Indah Karisma (2141720180)");
    }
  }
}

bool bilPrima(int num) {
  if (num <= 1) {
    return false;
  }
  if (num == 2) {
    return true;
  }
  if (num % 2 == 0) {
    return false;
  }
  for (int i = 3; i * i <= num; i += 2) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
