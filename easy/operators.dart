/// 运算符

import 'package:test/test.dart';

void main() {
  group("算数运算符", () {
    test('+', () {
      expect(5 + 2, 7);
    });
    test("-", () {
      expect(5 - 2, 3);
    });
    test('*', () {
      expect(5 * 2, 10);
    });
    test('/', () {
      expect(5 / 2, 2.5);
    });
    test('~/', () {
      expect(5 ~/ 2, 2);
    });
    test('%', () {
      expect(5 % 2, 1);
    });
  });

  group("关系运算符", () {
    test('==', () {
      expect(1 == 2, false);
    });
    test('!=', () {
      expect(1 != 2, true);
    });
    test('>', () {
      expect(1 > 2, false);
    });
    test('<', () {
      expect(1 < 2, true);
    });
    test('<=', () {
      expect(2 <= 2, true);
    });
    test('>=', () {
      expect(2 >= 2, true);
    });
  });

  group('赋值运算符', () {
    test('=', () {
      var a = 1;
      expect(a, 1);
    });
    test('??=', () {
      var a;
      expect(a, null);
      a ??= 1;
      expect(a, 1);
    });
    test('+=', () {
      var a = 1;
      a += 1;
      expect(a, 2);
    });
  });

  group('逻辑运算符', () {
    var a = true;
    var b = false;
    test('!', () {
      expect(!a, false);
    });
    test('&&', () {
      expect(a && b, false);
    });
    test('||', () {
      expect(a || b, true);
    });
  });

  group('条件表达式运算符', () {
    test('?:', () {
      expect(true ? 1 : 2, 1);
      expect(false ? 1 : 2, 2);
    });
    test('??', () {
      // 只针对null有效
      expect(0 ?? 2, 0);
      expect(null ?? 2, 2);
    });
  });
}
