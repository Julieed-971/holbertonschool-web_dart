void main(List<String> args) {
  int argValue = int.parse(args[0]);
  assert(argValue >= 80, "The score must be bigger or equal to 80");
  print("You Passed");
}
