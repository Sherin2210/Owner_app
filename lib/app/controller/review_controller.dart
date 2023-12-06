/* GlamGig */
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/backend/api/handler.dart';
import 'package:glamgig_stylist_flutter/app/backend/models/owner_reviews_model.dart';
import 'package:glamgig_stylist_flutter/app/backend/parse/review_parse.dart';

class ReviewController extends GetxController implements GetxService {
  final ReviewParser parser;

  bool apiCalled = false;
  List<OwnerReviewsModel> _ownerReviewsList = <OwnerReviewsModel>[];
  List<OwnerReviewsModel> get ownerReviewsList => _ownerReviewsList;
  ReviewController({required this.parser});

  @override
  void onInit() {
    super.onInit();
    getMyReviews();
  }

  Future<void> getMyReviews() async {
    var response = await parser.getMyReviews();
    apiCalled = true;
    _ownerReviewsList = [];
    update();
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = Map<String, dynamic>.from(response.body);
      var body = myMap['data'];

      body.forEach((data) {
        OwnerReviewsModel reviews = OwnerReviewsModel.fromJson(data);
        _ownerReviewsList.add(reviews);
      });
      update();
    } else {
      ApiChecker.checkApi(response);
    }
    update();
  }
}
