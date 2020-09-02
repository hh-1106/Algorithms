class DoublyLinkedList<T> {

    DLNode<T> head;
    DLNode<T> tail;

    int getSize(){
        int count = 0;
        if(head == null)    return count;
        else{
            DLNode<T> t = head;
            do{
                t = t.next;
                count++;
            }while( t != tail );
        }
        return count;
    }

    void printForward(){
        DLNode<T> t = head;
        while( t != null ){
            System.out.print(t.data + " ");
            t = t.next;
        }
        System.out.println();
    }

    void printBackward(){
        DLNode<T> t = tail;
        while( t != null ){
            System.out.print(t.data + " ");
            t = t.prev;
        }
        System.out.println();
    }

    void insertAtBegining(T data){
        DLNode<T> n = new DLNode<T>(data);
        if(head == null){
            head = n;
            tail = n;
            n.next = null;
            n.prev = null;
        }else{
            n.next = head;
            head.prev = n;
            head = n;
        }
    }

    void insertAtEnd(T data){
        DLNode<T> n = new DLNode<T>(data);
        if(tail == null){
            head = n;
            tail = n;
            n.next = null;
            n.prev = null;
        }else{
            n.next = tail;
            tail.prev = n;
            tail = n;
        }
    }

    void insertAt(T data, )

}