import 'package:geolocator/geolocator.dart';
import 'package:misemeonjigadoeeo/service/user_location_service.dart';

import 'base_viewmodel.dart';

class UserLocationViewModel extends BaseViewModel {

  final UserLocationService userLocationService = UserLocationService();
  Position position;

  Future<void> refreshPosition() async {
    changeLoadingState();
    position = await userLocationService.getLastKnownPosition();
    notifyListeners();
  }
}
