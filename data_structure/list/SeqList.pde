class SeqList<T> implements LList<T>{
    Object[] element;   // 对象数组
    int      len;       // 长度

    SeqList(){
        this(64);
    }

    SeqList(int size){
        // 创建容量为size的空表
        this.element = new Object[size];
        this.len = 0;
    }

    boolean isEmpty() {
		return this.len == 0;
	}

    int length() {
		return this.len;
	}

    // 返回第i元素，若i指定序号无效则返回null
	T get(int i) {
		if (i >= 0 && i < this.len) {
			return (T) this.element[i];
		}
		return null;
	}

    @Override
	// 设置第i个元素为x，若i指定序号无效则抛出序号越界异常
	void set(int i, T x) {
		if (x == null) {
			return;
		}
		if (i >= 0 && i < this.len) {
			this.element[i] = x;
		} else{
			// throw new IndexOutOfBoundsException(i + "");// 抛出序号越界异常
            System.out.println("IndexOutOfBoundsException: " + i);
        }
    }

    @Override
	// 插入x作为第i个元素，不能插入null
	void insert(int i, T x) {
		if (x == null)
			return;
		if (this.len == element.length) {
			Object[] temp = this.element;
			this.element = new Object[temp.length * 2];
			for (int j = 0; j < temp.length; j++)
				this.element[j] = temp[j];
		}
        // 下标容错
		if (i < 0)          i = 0;
		if (i > this.len)   i = this.len;
		for (int j = this.len - 1; j >= i; j--)
			// 元素后移，平均移动len/2
			this.element[j + 1] = this.element[j];
		this.element[i] = x;
		this.len++;
	}

    // 在顺序表最后插入x对象
	void append(T x) {
		this.insert(this.len, x);
	}

    @Override
	// 删除第i个元素，若操作成功返回被删除对象，否则返回null
	T remove(int i) {
		if (this.len == 0 || i >= this.len || i < 0)
			return null;
		T old = (T) this.element[i];
		for (int j = i; j < this.len - 1; j++)
			// 元素前移，平均移动len/2
			this.element[j] = this.element[j + 1];
		this.element[this.len - 1] = null;
		this.len--;
		return old;
	}

    @Override
	// 删除顺序表所有元素
	void removeall() {
		this.len = 0;
	}

    // 顺序表查找关键字是key的元素，返回首次出现的元素下标，若查找不成功则返回-1
	int indexOf(T key) {
		if (key != null)
			for (int i = 0; i < this.len; i++)
                // 对象采用equals方法比较是否相等
				if (this.element[i].equals(key))
					return i;
		return -1;
	}

    // 删除首次出现的 关键字为key的 元素
	void remove(T key) {
		if (this.len != 0 && key != null)
			this.remove(this.indexOf(key));
	}

    // 查找，返回首次出现的关键字为key的元素
	T search(T key) {
		int find = this.indexOf(key);
		return find == -1 ? null : (T) this.element[find];
	}

    // 判断线性表是否包含关键字为key的元素
	boolean contain(T key) {
		return this.indexOf(key) >= 0;
	}

    // 返回顺序表所有元素描述字符串
	String toString() {
		String str = "(";
		if (this.len > 0)
			str += this.element[0].toString();
		for (int i = 1; i < this.len; i++) {
			str += "," + this.element[i].toString();
		}
		return str + ")";
	}

    boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj instanceof SeqList) {
			SeqList<T> list = (SeqList<T>) obj;
			if (this.length() == list.length()) {
				// 比较实际长度元素，而非数组容量
				for (int i = 0; i < this.length(); i++)
					if (!(this.get(i).equals(list.get(i))))
						return true;
			}
		}
		return false;
	}
}