class LinkedStack<T> implements Stack<T>{

  Node<T> top;  // 栈顶结点

  LinkedStack(){
    top = null;
  }

  boolean isEmpty(){
    return top == null;
  }

  void push(T x){
    if(x != null){
      top = new Node<T>(x, top);
    }
  }

  T pop(){
    if(top == null) return null;
    T t = top.data;
    top = top.next;
    return t;
  }

  T get(){
    return top==null ?null :top.data;
  }

  String toString() {
    String str = ")";
    Node<T> p = top;
    while (p != null) {
      str = p.data.toString() + str;
      if (p.next != null)
        str = ", " + str;
      p = p.next;
    }
    return "(" + str;
  }

}
