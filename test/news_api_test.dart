import 'package:flutter_test/flutter_test.dart';
import 'package:newsapp/services/api.dart';

void main() {
  test('api testing', () async {
    final data = await fetchStartNews();
    assert(data.isNotEmpty);
  });
}
