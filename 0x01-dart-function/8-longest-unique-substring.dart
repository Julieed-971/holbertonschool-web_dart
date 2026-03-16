String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return "";
  }

  if (str.length == 1) {
    return str;
  }
  // Map to store last index of each character
  Map<String, int> lastVisitedChar = {};

  int currentLongestUniqueSubstringStartIndex = 0;
  int currentLongestUniqueSubstringMaxLen = 0;
  int currentLongestUniqueSubstringMaxStartIndex = 0;

  for (int end = 0; end < str.length; end++) {
    String char = str[end];
    // Check if current character exist in our map
    if (lastVisitedChar.containsKey(char)) {
      // Retrieve repeated character last position
      int? previousIndex = lastVisitedChar[char];

      // If current character index is inside the current window, slide the window to after that duplicate character
      if (previousIndex != null && previousIndex >= currentLongestUniqueSubstringStartIndex) {
        currentLongestUniqueSubstringStartIndex = previousIndex + 1;
      }
    }

    // Updating the char index in the map with the current index
    lastVisitedChar[char] = end;

    // Calculate current length
    int currentSubstringLength = end - currentLongestUniqueSubstringStartIndex + 1;

    // Update maxLen and maxStart index only if the current longest unique substring length is superior
    if (currentSubstringLength > currentLongestUniqueSubstringMaxLen) {
      currentLongestUniqueSubstringMaxLen = currentSubstringLength;
      currentLongestUniqueSubstringMaxStartIndex = currentLongestUniqueSubstringStartIndex;
    }
  }

  return str.substring(currentLongestUniqueSubstringMaxStartIndex, currentLongestUniqueSubstringMaxStartIndex + currentLongestUniqueSubstringMaxLen);
}
