class Coordinates {
  final double _lat;
  final double _lon;

  double get lat => _lat;

  double get lon => _lon;

  const Coordinates({required double lat, required double lon})
      : _lat = lat,
        _lon = lon;
}
