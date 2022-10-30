int calculate() {
  return 6 * 7;
}

List<int> fibo = [0, 1];

generateFibonacci({int size = 15}) {
  for (int i = 0; i < size; i++) {
    int nextNum = fibo.last + fibo[fibo.length - 2];
    fibo.add(nextNum);
  }
  print(fibo);
}

regraDe3(int arg1, int arg2, int arg3, int arg4) {}
