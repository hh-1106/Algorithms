class DoublyLinkedList<T> {

  DLNode<T> head;
  DLNode<T> tail;

  int getSize() {
    int count = 0;
    if (head == null)    return count;
    else {
      DLNode<T> t = head;
      do {
        t = t.next;
        count++;
      } while ( t != null );
    }
    return count;
  }

  void printForward() {
    DLNode<T> t = head;
    while ( t != null ) {
      System.out.print(t.data + " ");
      t = t.next;
    }
    System.out.println();
  }

  void printBackward() {
    DLNode<T> t = tail;
    while ( t != null ) {
      System.out.print(t.data + " ");
      t = t.prev;
    }
    System.out.println();
  }

  void insertAtBegining(T data) {
    DLNode<T> n = new DLNode<T>(data);
    if (head == null) {
      head = n;
      tail = n;
      n.next = null;
      n.prev = null;
    } else {
      n.next = head;
      head.prev = n;
      head = n;
    }
  }

  void insertAtEnd(T data) {
    DLNode<T> n = new DLNode<T>(data);
    if (tail == null) {
      head = n;
      tail = n;
      n.next = null;
      n.prev = null;
    } else {
      n.prev = tail;
      tail.next = n;
      tail = n;
    }
  }

  void insertAt(T data, int i) {
    if (i <= 0)              insertAtBegining(data);
    else if (i >= getSize()) insertAtEnd(data);
    else {
      DLNode<T> t = head;
      DLNode<T> n = new DLNode<T>(data);
      for (int j=0; j<i-1; j++) {
        t = t.next;
      }

      n.next = t.next;
      t.next.prev = n;
      t.next = n;
      n.prev = t;
    }
  }

  void remove(DLNode<T> n) {
    if (n.prev == null)      head = n.next;
    else if (n.next == null) tail = n.prev;
    else {
      DLNode<T> t = n.prev;
      t.next = n.next;
      n.next.prev = t;
    }
    n = null;
  }

  T remove(int i) {
    T data = null;
    if (i == 1) {
      data = head.data;
      head = head.next;
    } else if (i == getSize()) {
      data = tail.data;
      tail = tail.prev;
      tail.next = null;
    } else {
      DLNode<T> t = head;
      for (int j=0; j<i; j++) {
        t = t.next;
      }
      DLNode<T> n = t.next;
      n.prev = t.prev;
      t.prev.next = n;
      data = t.data;
      t = null;
    }
    return data;
  }

  // 返回链表所有元素的描述字符串
  String toString() {
    String str = "(";
    DLNode<T> p = this.head;
    while (p != null) {
      str += p.data.toString();
      if (p.next != null)
        str += " , ";// 不是最后一个节点时厚加分隔符
      p = p.next;
    }
    return str + ")";// 空表返回
  }
}
