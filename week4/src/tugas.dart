/* Required parameter
void main() {
  int result = add(3, 5); //pemanggilan fungsi
  print(result);
}

  int add(int a, int b) { //contoh parameter
    return a + b;
  }
 */

// Named-Optional parameter
/* void main() {
  int result = multiply(x: 4, y: 6); //pemanggilan fungsi
  print(result);
}

int multiply({int x = 1, int y = 1}) { //contoh parameter
  return x * y;
} */

/* // Positional-Optional parameter
void main() {
  int result1 = power(2);     //pemanggilan fungsi
  int result2 = power(2, 3);  
  print(result1);
  print(result2);
}

int power(int base, [int exponent = 2]) { //contoh parameter
  return exponent == 0 ? 1 : base * power(base, exponent - 1);
} */

/* // Rest parameter
void main() {
  int result1 = sum(1, 2);
  int result2 = sum(1, 2, 3, 4, 5);

  print("Hasil 1: $result1");
  print("Hasil 2: $result2");
}

int sum(int a, int b, ...rest) {
  int total = a + b;
  for (var number in rest) {
    total += number;
  }
  return total;
} */

// Fungsi - first-class objects
/* int applyFunction(int a, int Function(int) operation) {
  return operation(a);
}
int Function(int) multiplyBy(int factor) {
  return (int x) => x * factor;
}

void main() {
  int Function(int) doubleIt = multiplyBy(2);
  int result1 = applyFunction(5, doubleIt);

  int Function(int) tripleIt = multiplyBy(3);
  int result2 = tripleIt(4);

  print("Hasil 1: $result1"); 
  print("Hasil 2: $result2"); 
}
 */

// anonymous function
/* void main() {
  // Contoh anonymous function tanpa parameter.
  var sayHello = () {
    print("Hello, World!");
  };
  sayHello();
  
  // Contoh anonymous function dengan parameter.
  var multiply = (int a, int b) {
    return a * b;
  };
  int result = multiply(3, 5);
  print("Hasil perkalian: $result");
} */

//Lexical scope
/*void main() {
  int x = 10;

  void myFunction() {
    int y = 5;
    print("x: $x, y: $y");
  }

  myFunction(); // Memanggil myFunction.
} */


//Lexical closures
/* Function createCounter() {
  int count = 0;
  
  return () {
    count++;
    return count;
  };
}

void main() {
  var counter = createCounter();
  print(counter());
  print(counter());
} */

//return multiple value menggunakan list
List<int> getNumbers() {
  List<int> numbers = [1, 2, 3, 4, 5];
  return numbers;
}

void main() {
  List<int> numbers = getNumbers();
  for (var number in numbers) {
    print(number);
  }
}

