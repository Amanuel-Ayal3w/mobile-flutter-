import 'dart:io';

// Write a program to swap two numbers in dart with and without temp

void swap(int a, int b) {
  a = a + b;
  b = a - b;
  a = a - b;
}

void swapp(int a, int b) {
  int a = 10;
  int b = 20;
  int temp = a;
  a = b;
  b = temp;
}

//Write a program to print all the elements of Fibonacci series
int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

//Write a program to print a square of a number using user input.
void squareNumber() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);
  print("The square of $num is ${num * num}");
}

//Write a dart program to convert String to int.
void convertStringToInt() {
  print("Enter a string to:");
  String str = stdin.readLineSync()!;
  int num = int.parse(str);
  print("$str' is $num");
}

//Check if a given number is palindrome or not.

void checkPalindrome() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);
  int reversed = 0;
  int original = num;

  while (num != 0) {
    int remainder = num % 10;
    reversed = reversed * 10 + remainder;
    num = num ~/ 10;
  }

  if (original == reversed) {
    print("$original is a palindrome number.");
  } else {
    print("$original is not a palindrome number.");
  }
}

int gcd(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return gcd(b, a % b);
  }
}

//Write a program to find the lcm of two numbers
void findLCM() {
  print("Enter two numbers:");
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int lcm = (num1 * num2) ~/ gcd(num1, num2);
  print("The LCM of $num1 and $num2 is $lcm");
}

void main() {
  int x = 10;
  int y = 20;

  print("Before swap: x = $x, y = $y");
  swap(x, y);
  print("After swap: x = $x, y = $y");

  int n = 5;
  print("Fibonacci sequence up to the $n-th term:");
  for (var i = 0; i < n; i++) {
    print('${fibonacci(i)}');
  }
  squareNumber();
  convertStringToInt();
  checkPalindrome();
  findLCM();
}
