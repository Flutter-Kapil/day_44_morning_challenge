import 'package:test/test.dart';
import '../bin/main.dart';
void main() {
  test('Test Case 1', () {
    expect(waterCollected([0,1,0,2,1,0,1,3,2,1,2,1]), 6);
    expect(waterCollected( [ 1,2,0,3,1,2,0,1]), 4);
  });
}
