interface Queue<T>{
  
  boolean isEmpty();  // 判断队列是否为空

  void enqueue(T x);  // 元素x入队

  T    dequeue();     // 出队，返回对头元素

}
