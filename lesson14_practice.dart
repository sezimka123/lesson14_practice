import 'dart:io';
import 'dart:math';

void main() {
// task1();
// task2();
// print(exponent(2, -1));
// print(task4(3));
  print(fib(10));
}

task1() {
  int a = Random().nextInt(100);
  int b = Random().nextInt(100);

  stdout.write("$a + $b = ");
  int sum = int.parse(stdin.readLineSync()!);

  if (sum == (a + b)) {
    print("Correct!");
  } else {
    return task1();
  }
}

task2() {
  int dice = Random().nextInt(6) + 1;
  print(dice);

  print("1) roll the dice\n2) finish");
  int answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) {
    return task2();
  } else if (answer == 2) {
    print("wasted");
  } else {
    print("error");
  }
}

exponent(double a, int b) {
  if (b == 0) {
    return 1;
  } else if (b < 0) {
    return 1 / exponent(a, -b);
  } else {
    return a * exponent(a, b - 1);
  }
}

int task4(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + task4(n - 1);
  }
}

fib(int n) {
  List<int> fibSequence = [0, 1];

  for (int i = 2; i < n; i++) {
    fibSequence.add(fibSequence[i - 1] + fibSequence[i - 2]);
  }

  return fibSequence[n - 1];
}
