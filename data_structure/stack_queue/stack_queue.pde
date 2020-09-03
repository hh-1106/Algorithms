void setup() {

  //testSeqStack();
  //testLinkedStack();
  testSeqQueue();
}

void testSeqStack() {
  SeqStack ss = new SeqStack<Integer>();
  for (int i=0; i<10; i++) {
    ss.push(floor(random(20)));
  }

  println(ss.toString());
  println(ss.get());
  println(ss.toString());
  println(ss.pop());
  println(ss.pop());
  println(ss.toString());
}

void testLinkedStack() {
  LinkedStack ls = new LinkedStack<Integer>();

  for (int i=0; i<10; i++) {
    ls.push(i);
  }

  println(ls.toString());
  println(ls.pop());
  println(ls.pop());
  println(ls.toString());
}

void testSeqQueue() {
  SeqQueue sq = new SeqQueue<Integer>();

  for (int i=0; i<10; i++) {
    sq.enqueue(i);
  }

  println(sq.toString());
  println(sq.dequeue());
  println(sq.dequeue());
  println(sq.toString());
}
