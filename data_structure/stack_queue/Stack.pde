interface Stack<T>{
  
  boolean isEmpty();  // 判断元素是否为空

  void    push(T x);  // 元素x入栈 

  T       pop();      // 出栈，返回当前元素

  T       get();      // 返回栈顶元素

}