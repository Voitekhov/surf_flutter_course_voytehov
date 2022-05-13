import 'package:places/domain/coordinates.dart';
import 'package:places/domain/sight.dart';

class MockData {
  static const Sight capeArrow = Sight(
    name: 'Мыс стрелка',
    coordinates: Coordinates(lat: 58.16599, lon: 56.347486),
    url:
        'https://upload.wikimedia.org/wikipedia/commons/3/3a/%D0%9C%D1%8B%D1%81_%D0%A1%D1%82%D1%80%D0%B5%D0%BB%D0%BA%D0%B0_%D0%BD%D0%B0_%D0%BC%D0%B5%D1%81%D1%82%D0%B5_%D1%81%D0%BB%D0%B8%D1%8F%D0%BD%D0%B8%D1%8F_%D0%9A%D0%B0%D0%BC%D1%8B_%D0%B8_%D0%A7%D1%83%D1%81%D0%BE%D0%B2%D0%BE%D0%B9.jpg',
    details:
        'Мыс Стрелка в Пермском крае – прекрасное место для отдыха в выходной день и любования пейзажем Камского водохранилища.'
        ' Мыс образован на месте слияния рек Камы и Чусовая, представляет собой высокую скалу, которую подтачивает вода и ветер уже свыше 200 миллионов лет.'
        ' На Стрелке красиво в любое время года, отсюда открывается потрясающий вид на окраины города Пермь',
    type: 'Природная достопримечательность',
  );

  static const Sight operaAndBalletTheater = Sight(
    name: 'Театр оперы и балета',
    coordinates: Coordinates(
      lat: 58.016349,
      lon: 56.2459,
    ),
    url: 'https://aif-s3.aif.ru/images/021/194/5a91ee8701f2a5c65b3a2a0e6bba2b98.jpeg',
    details: 'Один из старейших музыкальных театров в России.'
        ' Построенный по инициативе и на средства горожан, он ведет свою историю с 1870 года, когда состоялась первая премьера — опера «Жизнь за царя» Михаила Глинки.'
        ' В 1926 году прошла первая балетная премьера — «Жизель» Адольфа Адана.',
    type: 'Культурные достопримечательности',
  );

  static const Sight park = Sight(
    name: 'Парк Горького',
    coordinates: Coordinates(lat: 58.004958, lon: 56.248207),
    url: 'https://static.ngs.ru/news/2021/99/preview/6bcea73a176daef2fc922cfa23346f4c01a9201a_599_399_c.jpg',
    details:
        'Парк Горького – центральный парк столицы, чьи территории посещает более 40 000 человек в будние и 250 000 в выходные и праздничные дни.'
        ' С 2011 года парк задает новые стандарты, став первым парком мирового уровня в России, пространством для отдыха, спорта, танцев и игр на свежем воздухе.',
    type: 'Парк',
  );

  static const List<Sight> sights = [capeArrow, operaAndBalletTheater, park];
}
