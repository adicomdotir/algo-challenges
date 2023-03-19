int romanToInt(String s) {
  List<String> romanKey = ['I', 'V', 'X', 'L', 'C', 'D', 'M'];
  List<int> romanValue = [1, 5, 10, 50, 100, 500, 1000];
  int result = 0;
  for (int i = 0; i < s.length; i++) {
    int firstIndex = romanKey.indexOf(s[i]);
    int secondIndex = romanKey.indexOf(s[i]);
    if (i + 1 < s.length) {
      secondIndex = romanKey.indexOf(s[i + 1]);
    }
    if (firstIndex >= secondIndex) {
      result += romanValue[firstIndex];
    } else {
      result += -romanValue[firstIndex] + romanValue[secondIndex];
      i++;
    }
  }
  return result;
}

String longestCommonPrefix(List<String> strs) {
  String longestCommonPrefix = strs[0];
  for (int i = 1; i < strs.length; i++) {
    int maxSize = longestCommonPrefix.length < strs[i].length
        ? longestCommonPrefix.length
        : strs[i].length;
    String tmp = '';
    for (int j = 0; j < maxSize; j++) {
      if (longestCommonPrefix[j] == strs[i][j]) {
        tmp += longestCommonPrefix[j];
      } else {
        break;
      }
    }
    longestCommonPrefix = tmp;
  }
  return longestCommonPrefix;
}
