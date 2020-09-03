class DLNode<T> {
  T           data;
  DLNode<T>   next;
  DLNode<T>   prev;

  DLNode() {
    this(null, null, null);
  }

  DLNode(T data) {
    this(data, null, null);
  }

  DLNode(T data, DLNode<T> next, DLNode<T> prev) {
    this.data = data;
    this.next = next;
    this.prev = prev;
  }

  @Override
    String toString() {
    return data.toString();
  }
}
