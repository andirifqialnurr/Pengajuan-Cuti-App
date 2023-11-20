import '../utils/api.dart';

class ListCutiRepository {
  Future<List> getHariLibur() async {
    final result = await API().client().get(API().baseUrl);
    return result.data;
  }
}
