import 'package:places/domain/coordinates.dart';
import 'package:places/domain/sight.dart';

class MockData {
  static const Sight capeArrow = Sight(
    name: 'Мыс стрелка',
    coordinates: Coordinates(lat: 58.16599, lon: 56.347486),
    url:
        'https://www.tripadvisor.ru/Attraction_Review-g15105185-d8422653-Reviews-Strelka_Peninsula-Gorodishche_Dobryansky_Municipal_District_Perm_Krai_Volga_Dis.html',
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
    url: 'https://permopera.ru/',
    details: 'Один из старейших музыкальных театров в России.'
        ' Построенный по инициативе и на средства горожан, он ведет свою историю с 1870 года, когда состоялась первая премьера — опера «Жизнь за царя» Михаила Глинки.'
        ' В 1926 году прошла первая балетная премьера — «Жизель» Адольфа Адана.',
    type: 'Культурные достопримечательности',
  );

  static const Sight park = Sight(
    name: 'Парк Горького',
    coordinates: Coordinates(lat: 58.004958, lon: 56.248207),
    url: 'https://www.park-gorkogo.com/',
    details:
        'Парк Горького – центральный парк столицы, чьи территории посещает более 40 000 человек в будние и 250 000 в выходные и праздничные дни.'
        ' С 2011 года парк задает новые стандарты, став первым парком мирового уровня в России, пространством для отдыха, спорта, танцев и игр на свежем воздухе.',
    type: 'Парк',
  );

  static const List<Sight> sights = [capeArrow, operaAndBalletTheater, park];
}
