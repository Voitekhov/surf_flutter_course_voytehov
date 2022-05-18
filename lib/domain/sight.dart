import 'package:places/domain/coordinates.dart';

class Sight {
  final String _name;
  final Coordinates _coordinates;
  final String _url;
  final String _details;
  final String _type;


  String get type => _type;

  String get details => _details;

  String get url => _url;

  Coordinates get coordinates => _coordinates;

  String get name => _name;

  const Sight({
    required String name,
    required Coordinates coordinates,
    required String url,
    required String details,
    required String type,
  })  : _name = name,
        _coordinates = coordinates,
        _url = url,
        _details = details,
        _type = type;
}
