// Using Dart Type test Operators
void main() {
  num number = 5;
  print(number is int); // true

  number = 5.25; // no 'double' keyword here
  var res = number is! int;
  print(res); // true
}

// Relational Operators: <, >, <=, >= in Dar
void main(){
  var n1 = 20;
  var n2 = 10;
  print("RUPP- Dart Relational Operators");
  var res = n1 > n2;
  print('n1 greater than n2: '+res.toString()); // false
  res = n1 < n2;
  print('n1 lesser than n2: '+res.toString()); // true
  res = n1 >= n2;
  print('n1 greater than or equal to n2: '+res.toString()); // false
  res = n1 <= n2;
  print('n1 lesser than or equal to n2: '+res.toString()); //
  res = n1 != n2;
  print('n1 not equal to n2: '+res.toString()); // true
  res = n1 == n2;
  print('n1 equal to n2: '+res.toString()); // false
}

// using Logincal Operators in Dart
void main(){
  bool bool1 = true, bool2 = false;
  print("RUPP- Dart Logical Operators");
  var res = bool1 && bool2;
  print('bool1 AND bool2: '+res.toString()); // false
  //Logical AND
  print("bool1 && bool2: ${bool1 && bool2}"); // false
  res = bool1 || bool2;
  //Logical OR
  print('bool1 || bool2: '+res.toString()); // true
  res = !(bool1 && bool2);
  //Logical NOT
  print('!(bool1 && bool2): '+res.toString()); // true

}

//Bitwise Operators in Dart
void main(){
  var num1 =40;
  var num2 =5;
  var num3 =0;

  print("RUPP- Dart Bitwise Operators");
  //Bitwise AND
  print("num1 & num2 = ${(num1 & num2)}");
  //Bitwise OR
  print("num1 | num2 = ${(num1 | num2)}");
  //Bitwise XOR
  print("num1 ^ num2 = ${(num1 ^ num2)}");
  //Binary Complement Operator
  print("~num1 = ${(~num1)}");
  //Binary Left Shift Operator
  num3 = num1 << 2;
  print("num1 << 2 = ${num3}");
  //Binary Right Shift Operator
  num3 = num1 >> 2;
  print("num1 >> 1 = ${num3}" );

}

// Using Condintinal Operator in Dart
// condition ? expr1 : exp
void main(){
  var res = 10 > 15 ? "Greater": "Smaller";
  print(res); // Smaller
}

//exp1 ?? exp2
void main(){
  var n1 = null;
  var n2 = 15;
  var res = n1 ?? n2;
  print(res);
}