main() {
  // 推断类型，建议使用此种风格的定义方式
  var name1 = "Bob";
  // 动态类型
  dynamic name2 = "Bob";
  // 指定类型
  String name3 = "Bob";

  // 未指定默认值时为null
  var lineCount;
  assert(lineCount == null);

  // final：运行时常量，它的值在运行时才能确定
  // const：编译时常量，它的值需要在编译时就确定
  const test1 = "hello"; // 正确
  final test2 = "hello"; // 正确
  // const test3 = DateTime.now(); // 错误，不能在编译时确定
  final test4 = DateTime.now(); // 正确
  // const test5 = new List(); // 错误，不能在编译时确定
  final test6 = new List(); // 正确

  // 内置类型：num
  var number1 = 1;
  var number2 = 1.1;

  // 内置类型：strings
  var string1 = "abc";
  // ${}
  var string2 = "string1 is $string1";
  assert(string2 == "string1 is abc");
  var string3 = "string1 is ${string1.toUpperCase()}";
  assert(string3 == "string1 is ABC");
  // +
  var string4 = "a" + "b" + "c";
  assert(string4 == "abc");
  // 换行
  var string5 = "a"
      "b"
      "c";
  assert(string5 == "abc");
  // 多行字符串 """
  var string6 = """
  a
  b
  c
  """;
  assert(string6 == "a\nb\nc");
  // 不转义的raw字符串 r""
  var string7 = r"\n";
  assert(string7 != "\n");

  // 内置类型：booleans，true/false
  // 只能显示的检查布尔值

  // 内置类型：lists
  var list1 = [1, 2, 3];
  // 扩展操作符 ... ...?
  var list2 = [0, ...list1];
  assert(list2.length == 4);
  var list3 = [
    0,
    ...[null, null]
  ];
  assert(list3.length == 1);
  // collection if
  var list4 = [
    0,
    if (false) {2},
    if (true) {3},
  ];
  assert(list4.length == 2);
  // collection for
  var list5 = [
    "#0",
    for (var i in [1, 2, 3]) {"#$i"}
  ];
  assert(list5.length == 4);

  // 内置类型：sets
  var set1 = {1, 2, 3};
  var set2 = <num>{};

  // 内置类型：maps
  var map1 = {};
  var map2 = <int, String>{};
  var map3 = Map<int, String>();

  // 内置类型：symbols

  // 内置类型：functions
  // 匿名函数
  var func1 = () {};
  var func2 = () => print("");
  // 返回值：没有显示返回语句的函数，默认返回null
}
