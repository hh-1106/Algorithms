class Node<T> {
  T       data;
  Node<T> next;

  Node() {
    this(null, null);
  }

  Node(T data, Node<T> next) {
    this.data = data;
    this.next = next;
  }

  String toString() {
    return data.toString();
  }
}
