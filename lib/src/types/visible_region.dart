part of yandex_mapkit;

class VisibleRegion extends Equatable {
  const VisibleRegion(
      this.topLeft, this.topRight, this.bottomLeft, this.bottomRight);

  factory VisibleRegion.fromJson(dynamic json) {
    final topLeft = Point(
        latitude: json['topLeft']['latitude'] as double,
        longitude: json['topLeft']['longitude'] as double);
    final topRight = Point(
        latitude: json['topRight']['latitude'] as double,
        longitude: json['topRight']['longitude'] as double);
    final bottomLeft = Point(
        latitude: json['bottomLeft']['latitude'] as double,
        longitude: json['bottomLeft']['longitude'] as double);
    final bottomRight = Point(
        latitude: json['bottomRight']['latitude'] as double,
        longitude: json['bottomRight']['longitude'] as double);

    return VisibleRegion(topLeft, topRight, bottomLeft, bottomRight);
  }

  final Point topLeft;
  final Point topRight;
  final Point bottomLeft;
  final Point bottomRight;

  @override
  List<Object> get props =>
      <Object>[topLeft, topRight, bottomLeft, bottomRight];
}
