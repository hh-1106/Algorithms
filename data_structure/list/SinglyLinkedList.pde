// 带头结点的单链表
class SinglyLinkedList<T> implements LList<T> {

  Node<T> head;   // 头指针，指向单链表的头结点

  // 默认构造方法构造空单链表
  SinglyLinkedList() {
    // 创建头结点，data和next值均为null
    this.head = new Node<T>();
  }

  // 以结点元素构造单链表
  SinglyLinkedList(T[] element) {
    this();
    Node<T> rear = this.head;
    for (int i = 0; i < element.length; i++) {
      rear.next = new Node<T>(element[i], null);  // 尾插入，创建节点链如rear节点之后
      rear = rear.next;
    }
  }

  // 单链表的深拷贝
  SinglyLinkedList(SinglyLinkedList<T> list) {
    this();
    Node<T> p = list.head.next;
    Node<T> rear = this.head;
    while (p != null) {
      rear.next = new Node<T>(p.data, null);
      rear = rear.next;
      p = p.next;
    }
  }

  // 由指定数组构造单链表，递归方法
  private Node<T> create(T[] elements, int i) {
    Node<T> p = null;
    if (i < elements.length) {
      p = new Node<T>(elements[i], null);
      p.next = create(elements, i + 1);
    }
    return p;
  }

  // 复制单链表，递归算法
  private Node<T> copy(Node<T> p) {
    Node<T> q = null;
    if (p != null) {
      q = new Node<T>(p.data, null);
      q.next = copy(p.next);
    }
    return q;
  }

  @Override
  // 判断单链表是否为空
  boolean isEmpty() {
    return this.head.next == null;
  }

  @Override
  // 返回单链表长度
  int length() {
    int i = 0;
    Node<T> p = this.head.next; // p从单链表第一个节点开始
    while (p != null) {         // 若单链表未结束
      i++;
      p = p.next;
    }
    return i;
  }

  // 得到第i个元素，若i指定序号无效，则返回null
  T get(int i) {
    if (i > 0) {
      Node<T> p = this.head.next;
      for (int j = 0; p != null && j < i; j++)
        p = p.next;
      if (p != null) {
        return p.data;// p指向第i个结点
      }
    }
    return null;
  }

  @Override
  // 设置第i个元素值为x，若i指定序号无效则抛出序号越界异常
  void set(int i, T x) {
    if (x == null)
      return;// 不能设置空对象
    if (i >= 0) {
      Node<T> p = this.head.next;
      for (int j = 0; p != null && j < i; j++)
        p = p.next;
      if (p != null)
        p.data = x;// p指向第i个结点
    } else{
			// throw new IndexOutOfBoundsException(i + "");// 抛出序号越界异常
      System.out.println("IndexOutOfBoundsException: " + i);
    }
  }

  @Override
  // 将x对象插入在序号为i节点前
  void insert(int i, T x) {
    if (x == null)
      return;
    Node<T> p = this.head;
    // 寻找插入位置
    for (int j = 0; p.next != null && j < i; j++)
      // 循环停止时,p指向第i-1节点或最后一个节点
      p = p.next;

    p.next = new Node<T>(x, p.next);
  }

  @Override
    // 在单链表最后添加对象
    void append(T x) {
    insert(Integer.MAX_VALUE, x);
  }

  @Override
  // 删除序号为i的节点，若操作成功，则返回被删除对象，否则返回null
  T remove(int i) {
    if (i >= 0) {
      Node<T> p = this.head;
      // 定位到待删除节点i的前驱节点
      for (int j = 0; p.next != null && j < i; j++)
        p = p.next;
      if (p.next != null) {
        T old = p.next.data;  // 获得原对象
        p.next = p.next.next; // 删除p的后继节点
        return old;
      }
    }
    return null;
  }

  @Override
  // 删除单链表所有元素，java自动回收各结点所占用的内存空间
  void removeall() {
    this.head.next = null;
  }

  // 删除首次出现的值为x的节点，若没找到指定节点则节点不删除
  void remove(T x) {
    if (this.head.next == null || x == null)
      return;
    Node<T> front = this.head, p = front.next;
    while (p != null && !p.data.equals(x)) {
      front = p;
      p = p.next;
    }
    if (p != null)
      front.next = p.next;// 头删除，中间/尾删除
  }

  // 顺序查找关键字为key元素，返回首次出现的元素，若查找不成功则返回null
  T search(T key) {
    if (key == null)
      return null;
    Node<T> p = this.head.next;
    while (p != null) {
      if (p.data.equals(key))
        return p.data;
      p = p.next;
    }
    return null;
  }

  // 判断线性表是否关键字为key的元素
  boolean contain(T key) {
    return this.search(key) != null;// 以查找结果获得判断结果
  }

  // 返回单链表所有元素的描述字符串
  String toString() {
    String str = "(";
    Node<T> p = this.head.next;
    while (p != null) {
      str += p.data.toString();
      if (p.next != null)
        str += " , ";// 不是最后一个节点时厚加分隔符
      p = p.next;
    }
    return str + ")";// 空表返回
  }

  // 单链表的比较
  boolean equals(Object obj) {
    if (obj == this)
      return true;
    if (!(obj instanceof SinglyLinkedList))
      return false;
    Node<T> p = this.head.next;

    Node<T> q = ((SinglyLinkedList<T>) obj).head.next;
    while (p != null && q != null && p.data.equals(q.data)) {
      p = p.next;
      q = q.next;
    }
    return p == null && q == null;
  }

  // 比较两条单链表是否相等，递归方法
  private boolean equals(Node<T> p, Node<T> q) {
    if (p == null || q == null)
      return true;
    return p != null && q != null && p.data.equals(q.data)
      && p.next.equals(q.next);
  }
}
