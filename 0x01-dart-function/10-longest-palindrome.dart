import '9-palindrome.dart';

String longestPalindrome(String s) {
  int stringLen = s.length;

  List<List<bool>> dpTable = List.generate(
    stringLen,
    (rowIndex) => List.filled(stringLen, false),
  );

  int start = 0;
  int maxLen = 1;

  // All substrings of length 1 are palindromes
  for (int i = 0; i < stringLen; i++) {
    dpTable[i][i] = true;
  }

  // Check for substrings of length 2
  for (int i = 0; i < stringLen - 1; i++) {
    // Compare 2 characters
    if (s[i] == s[i + 1]) {
      dpTable[i][i + 1] = true;
      // If current longest palindrome length is less than 2, update the start index and the maxLen
      if (maxLen < 2) {
        start = i;
        maxLen = 2;
      }
    }
  }

  // Check for substring of length greater than 2
  // Iterate over all remaining lengths from 3 to stringLen
  // KEY LOGIC: We iterate by length (k) from 3 upwards.
  // This ensures that when we check a substring of length K,
  // the result for its inner substring (length K-2) is ALREADY computed and stored.
  for (int k = 3; k <= stringLen; k++) {
    // Iterate over all substrings from start to end of substring of length k
    int substringsLengths = stringLen - k + 1;
    for (int i = 0; i < substringsLengths; i++) {
      int substringEndIndex = i + k - 1;

      // A substring s[i...end] is a palindrome IF:
      // 1. The inner substring s[i+1...end-1] is ALREADY known to be a palindrome (dpTable check).
      // 2. The current edge characters s[i] and s[end] match.
      //
      // We do NOT need to re-scan the inside. The dpTable value acts as a "certificate"
      // that all inner layers were valid in previous iterations.
      if (dpTable[i + 1][substringEndIndex - 1] &&
          s[i] == s[substringEndIndex]) {
        dpTable[i][substringEndIndex] = true;

        // Update global maximum if this new palindrome is longer
        if (k > maxLen) {
          start = i;
          maxLen = k;
        }
      }
    }
  }
  // Requirement: Palindromes must be at least 3 characters long.
  // If the longest found is less than 3 (covers both short inputs and lack of palindromes), return "none".
  if (maxLen < 3) {
    return "none";
  }
  return s.substring(start, start + maxLen);
}
