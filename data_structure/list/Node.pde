class Node<T> {
  Node<T> next;
  T       data;

  Node() {
    this(null, null);
  }

  Node(T data) {
    this(data, null);

  Node(T data, Node<T> next) {
    this.data = data;
    this.next = next;
  }

  @Override
    String toString() {
    return data.toString();
  }
}
