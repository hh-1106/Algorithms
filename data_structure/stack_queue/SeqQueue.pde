class SeqQueue<T> implements Queue<T> {

  Object[] element;   // 队列元素
  int      head;      // 对头下标
  int      tail;      // 对尾下标

  SeqQueue() {
    this(64);
  }

  SeqQueue(int len) {
    len = max(64, len);
    element = new Object[len];
    head = tail = 0;
  }

  boolean isEmpty() {
    return head == tail;
  }

  void enqueue(T x) {
    if (x == null) return;
    if ( head == (tail+1)%element.length ) {
      Object[] t = element;
      element = new Object[t.length*2];
      int i=head, j=0;
      while (i != tail) {
        element[j] = t[i];
        i = (i+1)%t.length;
        j++;
      }
      head = 0;
      tail = j;
    }
    element[tail] = x;
    tail = (tail+1)%element.length;
  }

  T dequeue() {
    if (isEmpty()) return null;
    T t = (T)element[head];
    head = (head+1)%element.length;
    return t;
  }

  String toString() {
    String str = "(";
    if (!isEmpty()) {
      str += element[head].toString();
      int i = (head+1) % element.length;
      while (i != tail) {
        str += "," + element[i].toString();
        i = (i+1) % element.length;
      }
    }
    return str += ")";
  }
}
