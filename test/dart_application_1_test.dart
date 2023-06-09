import 'package:dart_application_1/course.dart';
import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {
  test('roman to int', () {
    expect(romanToInt('MCMXCIV'), 1994);
  });

  test('longest Common Prefix', () {
    expect(longestCommonPrefix(["flower", "flow", "flight"]), 'fl');
    expect(longestCommonPrefix(["dog", "racecar", "car"]), '');
  });

  test('gcd', () {
    expect(calculateGCD(30, 12), 6);
    expect(calculateGCD(516, 186), 6);

    expect(calculateFastGCD(30, 12), calculateGCD(30, 12));
    expect(calculateFastGCD(516, 186), calculateGCD(30, 12));
  });

  test('binary search', () {
    expect(binarySearch([1, 3, 5, 7, 9], 0, 4, 1), 0);
    expect(binarySearch([1, 3, 5, 7, 9], 0, 4, 10), -1);
  });
}
