class NumberUtils {
  const NumberUtils._();

  static String twoDigits(int n) => n.toString().padLeft(2, "0");
}
