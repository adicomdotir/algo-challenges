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

int binarySearch(
  List<int> listOfNumbers,
  int lowerBound,
  int upperBound,
  int x,
) {
  if (lowerBound > upperBound) {
    return -1;
  }

  int middleIndex = (lowerBound + upperBound) ~/ 2;
  if (listOfNumbers[middleIndex] > x) {
    return binarySearch(listOfNumbers, lowerBound, middleIndex, x);
  } else if (listOfNumbers[middleIndex] < x) {
    return binarySearch(listOfNumbers, middleIndex + 1, upperBound, x);
  }
  return middleIndex;
}
