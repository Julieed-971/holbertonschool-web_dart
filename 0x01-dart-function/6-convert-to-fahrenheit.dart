List<double> convertToF(List<double> temperaturesInC) {
  Map<double, double> TempInCAndF = {};
  temperaturesInC.forEach( (tempInC)=> TempInCAndF[tempInC] = double.parse(((tempInC * 9 / 5) + 32).toStringAsFixed(2)));

  return TempInCAndF.values.toList();
}
