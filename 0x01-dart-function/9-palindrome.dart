bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  // Declare start and end indexes
  int start = 0;
  int end = s.length - 1;

  for (start; start <= end; start++) {
    if (s[start] != s[end]) {
      return false;
    }
    end--;
  }
  return true;  
}
