void setup() {
  //testNode();
  //testSeqList();
  //testSinglyLinkedList();

  //testDLNode();
  testDoublyLinkedList();
}


void testNode() {
  Node n = new Node<Integer>(123);
  print( n.toString());
}

void testDLNode() {
  DLNode n = new DLNode<Integer>(55);
  print( n.toString());
}

void testSeqList() {
  SeqList s = new SeqList();
  for (int i=0; i<10; i++) {
    s.insert(i, 10+i);
  }
  println(s.toString());
  s.remove(5);
  println(s.toString());
  s.append(16);
  println(s.toString());
  s.insert(0, 9);
  println(s.toString());
  println(s.search(16));
}

void testSinglyLinkedList() {
  Integer[] a = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  SinglyLinkedList sl = new SinglyLinkedList<Integer>(a);
  println(sl.toString());
  println("len: " + sl.length());
  sl.insert(0, 0);
  println("len: " + sl.length());
  sl.set(9, 19);
  println(sl.get(3));
  println(sl.toString());
  sl.remove(5);
  println(sl.toString());
}

void testDoublyLinkedList() {
  DoublyLinkedList dl = new DoublyLinkedList<Float>();
  //dl.insertAtBegining(1);
  //dl.insertAtEnd(2);
  //dl.insertAtEnd(3);
  //println(dl.getSize());

  for (int i=5; i<10; i++) {
    dl.insertAt(i, i);
  }
  println(dl.getSize());
  dl.printForward();
  println(dl.toString());
}
