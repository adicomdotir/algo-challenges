int calculateGCD(int a, int b) {
  int best = 0;
  for (int d = 1; d < a + b; d++) {
    if (a % d == 0 && b % d == 0) {
      best = d;
    }
  }
  return best;
}

int calculateFastGCD(int a, int b) {
  if (b == 0) {
    return a;
  }
  int res = a % b;
  return calculateFastGCD(b, res);
}
