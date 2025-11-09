void main() {

  // const 常量在編譯時期就確定下來，不能在運行時期改變
  // final 常量在運行時期才能確定下來，但一旦賦值後就不能再改變(只能賦值一次)
  //const PI = 3.14;
  //final A = 3.15;

  //final B;
  //B = 123;
  //B = 456; // 錯誤: final 變量只能賦值一次
  //print(B);


  // 使用 final 定義一個列表，因為.add() 是修改列表內容，而不是重新賦值，所以是允許的
  final List l = [];

  l.add(12);
  l.add(22);
  l.add(32);
  print(l);

}