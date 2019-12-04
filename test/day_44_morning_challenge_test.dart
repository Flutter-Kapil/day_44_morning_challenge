import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(waterCollected([1, 0, 0, 1]), 2);
    expect(waterCollected([0, 0, 0, 0]), 0);
//    expect(waterCollected([2, 2, 2, 2]), 0);
//    expect(waterCollected([1, 2, 3, 4]), 0);
//    expect(waterCollected([4, 3, 2, 1]), 0);
    expect(waterCollected([2, 0, 1, 0, 2]), 5);
    expect(waterCollected([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6);
    expect(waterCollected([1, 2, 0, 3, 1, 2, 0, 1]), 4);
  });
}
