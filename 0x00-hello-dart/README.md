# <p align="center">Dart - Hello Dart</p>

# Introduction

We are now starting our mobile development journey!

We are kicking off with this project, where you will get hands on with Dart, a modern programming language developed by Google. Dart is fast, easy to learn, and perfect for building apps for mobile, web, and backend. You’ll explore its clean syntax, strong typing, and learn how it powers Flutter to create smooth, high-performance applications.

In this project, we will begin with the fundamentals, printing output, working with different data types, and exploring basic operations laying the foundation for more advanced Dart programming in the future.

# Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- Understand the basic structure and syntax of Dart.
- Learn how to declare and use variables with common data types (int, double, String).
- Practice printing output and interacting with simple console operations.
- Use control flow statements such as (if, else).
- Understand the role of the main() function as the entry point of a Dart program.

# Requirements

- All your files will be interpreted/compiled on Ubuntu 20.04 LTS using `Dart 3.x.x`
- All your files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory

## Mandatory Tasks

<details close><summary>

### Task 0. Hello Holberton!

</summary>

Write a dart program that print `Hello Holberton!` followed by a new line.

- Use the function print
```
youssef@Holberton/Dart$ dart 0-hello_holberton.dart
Hello Holberton!

youssef@Holberton/Dart$
```


</details>

<details close><summary>

### Task 1. The Quotes

</summary>
Write a Dart program that prints exactly "Programming is like building a multilingual puzzle,

- followed by a new line.
- Use the function print

```
youssef@Holberton/Dart$ dart 1-quotes.dart
"Programming is like building a multilingual puzzle

youssef@Holberton/Dart$
```


</details>

<details close><summary>

### Task 2. Print Number

</summary>

Complete this <a href="https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/misc/2022/4/cd4e50dbcd9a9b6e40556d98f77e7c35315d0e45.dart?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260310%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260310T180407Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=957f7a76e3f2dbb67b1492ee11699ef65aba58b38aeda4161fd26f1c1b7afcb5">source code</a> in order to print the integer stored in the variable number, followed by Battery street, followed by a new line.

- The output of the script should be:
- the number, followed by Battery street,
- followed by a new line
- You are not allowed to cast the variable number into a string
- Your code must be 4 lines long

```
youssef@Holberton/Dart$ dart 2-print_number.dart
98 Battery street

youssef@Holberton/Dart$
```

</details>

<details close><summary>

### Task 3. Print Doubles

</summary>

Complete this <a href="https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/misc/2022/4/051815b2558a755331852082a54a55c046eecbe1.dart?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260310%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260310T182031Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=ee0e4faad91236ecae85e81d984f9e87a11cda6b201ee3b4f2a3a8e124d597d6">source code</a> in order to print the doubles stored in the variable number with a precision of 2 digits.

- The output of the program should be:
- Double: followed by the double with only 2 digits
- followed by a new line

```
youssef@Holberton/Dart$ dart 3-print_double.dart
Double: 3.14

youssef@Holberton/Dart$
```

</details>

<details close><summary>

### Task 4. Print string

</summary>

Complete this <a href="https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/misc/2022/4/eee3f8d0682099ca65dd48eacfb636114eb2bdcf.dart?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260311%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260311T072359Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=5415b2bb8d6bab90427d79c542a78d7a83380da1ef81d4e773c72de06c936fed">source code</a> in order to print 3 times a string stored in the variable str, followed by its first 9 characters.

- The output of the program should be:
- 3 times the value of str
- followed by a new line and the 9 first characters of str
- followed by a new line
- You are not allowed to use any loops or conditional statement
- Your program should be maximum 5 lines long

```
youssef@Holberton/Dart$ dart 4-print_string.dart > output 
youssef@Holberton/Dart$ cat -e output
Holberton SchoolHolberton SchoolHolberton School$
Holberton$
$
youssef@Holberton/Dart$
```

</details>

<details close><summary>

### Task 5. Assertion

</summary>

Write a Dart program that validates a test score passed as a command-line argument

Complete this <a href="https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/misc/2022/4/ce138aade1ae35689b202d8ddba3280e0b476bf5.dart?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260311%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260311T072512Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=35ad5b65aecc4045ad4d37dd74a33f6b1cfd3ad56316ad503ac5007138eb2918">source code</a> to create a program that:

- Takes a number as a command-line argument when running the program (as shown below in the output example)
- Checks if the number is greater than or equal to 80
- If the score is >= 80, prints You Passed
- Otherwise, throw an assertion error with the message The score must be bigger or equal to 80

```
youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 79
Unhandled exception:
'file:/youssef@Holberton/Dart/5-assertion.dart': Failed assertion: line 3 pos 10: 'nb >= 80': The score must be bigger or equal to 80
#0      _AssertionError._doThrowNew (dart:core-patch/errors_patch.dart:51:61)
#1      _AssertionError._throwNew (dart:core-patch/errors_patch.dart:40:5)
#2      main (file:/youssef@Holberton/Dart/5-assertion.dart:3:10)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 80
You Passed
youssef@Holberton/Dart$ 
```

Requirement:

- You MUST use assertions (no IF/ELSE statements allowed)


</details>

<details close><summary>

### Task 6. Positive anything is better than negative nothing

</summary>

Write a dart Program That given an argument ,determine if its positive or negative

- The variable number will store as a string you should converted to integer

- The output of the program should be:

- The number, followed by
    - if the number is greater than 0: is positive
    - if the number is 0: is zero
    - if the number is less than 0:is negative

```
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -4
-4 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 0
0 is zero
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -3
-3 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 10
10 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 6
6 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -10
-10 is negative
youssef@Holberton/Dart$
```

</details>




# Author

Julie Dedieu: [Julieed-971](https://github.com/Julieed-971/)
