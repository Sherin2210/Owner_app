/* GlamGig */
class YearlyAnalyticsModel {
  int? count;
  int? dayName;
  int? day;
  double? total;

  YearlyAnalyticsModel({this.count, this.dayName, this.day, this.total});

  YearlyAnalyticsModel.fromJson(Map<String, dynamic> json) {
    count = int.parse(json['count'].toString());
    dayName = int.parse(json['day_name'].toString());
    day = int.parse(json['day'].toString());
    total = double.parse(json['total'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['day_name'] = dayName;
    data['day'] = day;
    data['total'] = total;
    return data;
  }
}
