void main(List<String> args) {
  int argValue = int.parse(args[0]);
  if (argValue > 0) {
    print('$argValue is positive');
  } 
  else if (argValue == 0) {
    print('$argValue is zero');
  }
  else if (argValue < 0) {
    print('$argValue is negative');
  }
}
