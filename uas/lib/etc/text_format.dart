class TextFormat {
  static String toSintenceCase(String text) {
    var strings = text.split(" ");
    String result = "";

    strings.forEach((element) {
      var tempText = element.trim();
      tempText = tempText.substring(0, 1).toUpperCase() +
          tempText.substring(1, tempText.length);
      result += " " + tempText;
    });

    return result.substring(1, result.length);
  }
}
