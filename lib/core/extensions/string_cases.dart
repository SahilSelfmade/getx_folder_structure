extension StringCasesExtesnsion on String {
  // ! First letter always capital
  String titleCase() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

// ! Capital Every First Letter of String
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    List<String> words = split(' ');
    List<String> capitalizedWords = words.map((word) {
      if (word.isEmpty) {
        return word;
      }
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).toList();
    return capitalizedWords.join(' ');
  }
}
