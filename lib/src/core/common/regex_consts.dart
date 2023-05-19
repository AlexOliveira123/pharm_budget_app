abstract class RegexConsts {
  static const email = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
  static const emoji = r'[^\x00-\x7F]';
  static const accents = r'[^\x00-\x7F]';
  static const whiteSpace = r'\s';
}
