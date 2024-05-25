class Helpers {
  Helpers._();

  static double getResponsiveSize(Map<double, double> sizes, double width) {
    double size = 0;

    sizes.forEach((key, value) {
      if (width >= key) {
        size = value;
      }
    });

    return size;
  }
}
