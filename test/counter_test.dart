import 'package:counter_app_unit_test/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Test description convention is given...when...then...
  test(
      'given counter class when it is instantiated then value of count should be 0',
      () {
        // Arrange
        final Counter counter = Counter();
        // Act
        final val = counter.count;
        // Assert
        expect(val, 0);
      });
}
