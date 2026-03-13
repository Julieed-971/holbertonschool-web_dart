String longestUniqueSubstring(String str) {
  Set <String> longestSubStr = {};
  str.runes.forEach((c) {
    var ch = new String.fromCharCode(c);
    longestSubStr.add(ch);
  });
  String newStr = '';
  longestSubStr.forEach((ch) {
    newStr+= ch;
  });
  return newStr;
}
