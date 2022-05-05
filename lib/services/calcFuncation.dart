double pointer = 0;

CalcPoints(List<bool> v) {
  for (int i = 0; i < v.length; i++) {
    if (v[i] == true) {
      pointer += (100 / v.length);
    }
  }
  return pointer;
}
