class SeqStack<T> implements Stack<T>{

  Object element[]; // 元素数组
  int    top;       // 栈顶元素下标

  SeqStack(){
    this(64);
  }
  
  SeqStack(int size){
    this.element = new Object[abs(size)];
    this.top = -1;
  }

  boolean isEmpty(){
    return top == -1;
  }

  void push(T x){
    if(x == null) return;
    
    // 若满栈
    if(top == element.length - 1){
      Object[] t = element;
      element = new Object[t.length * 2];
      for(int i=0; i<t.length; i++)
        element[i] = t[i];
    }

    top++;
    element[top] = x;
  }

  T pop(){
    return top==-1 ?null :(T)element[top--];
  }

  T get(){
    return top==-1 ?null :(T)element[top];
  }

  String toString(){
    String str = "(";
    if (top > -1)
      str += element[0].toString();
    for (int i = 1; i <= top; i++) {
      str += "," + element[i].toString();
    }
    return str + ")";
  }

}
