class Heap {
  List heap = [];
  Heap(List array) {
    buildHeap(array);
    // buildMaxHeap(array);
  }
  void buildHeap(List array) {
    heap = array;
    for (int i = getParent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }
  void buildMaxHeap(List array) {
    heap=array;
  for (int i = (heap.length ~/ 2) - 1; i >= 0; i--) {
    shiftDownMax(i);
  }
}

  int getParent(int i) {
    return (i - 1) ~/ 2;
  }

  void shiftDown(int current) {
    int lastidx = heap.length - 1;
    int leftidx = getLeftChild(current);
    while (leftidx <= lastidx) {
      int rightidx = getRightChild(current);
      int shiftidx;
      if (rightidx <= lastidx &&
          heap.elementAt(rightidx) < heap.elementAt(leftidx)) {
        shiftidx = rightidx;
      } else {
        shiftidx = leftidx;
      }
      if (heap.elementAt(shiftidx) < heap.elementAt(current)) {
        swap(shiftidx, current);
        current = shiftidx;
        leftidx = getLeftChild(current);
      } else {
        return;
      }
    }
  }

  void shiftup(int current) {
    int parentidx = getParent(current);
    while (
        current >= 0 && heap.elementAt(parentidx) > heap.elementAt(current)) {
      swap(current, parentidx);
      current = parentidx;
      parentidx = getParent(current);
    }
  }

  void peek() {
    print(heap[0]);
  }

  void remove() {
    swap(0, heap.length - 1);
    heap.removeLast();
    shiftDown(0);
  }

  void insert(int value) {
    heap.add(value);
    shiftup(heap.length - 1);
  }

  int getLeftChild(int i) {
    return (i * 2) + 1;
  }

  int getRightChild(int i) {
    return (i * 2) + 2;
  }

  void display() {
    print(heap);
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  void shiftDownMax(int currentIdx) {
    int lastIdx = heap.length - 1;
    int leftIdx = getLeftChild(currentIdx);
    while (leftIdx <= lastIdx) {
      int rightIdx = getRightChild(currentIdx);
      int shiftIdx;
      if (rightIdx <= lastIdx && heap[rightIdx] > heap[leftIdx]) {
        shiftIdx = rightIdx;
      } else {
        shiftIdx = leftIdx;
      }
      if (heap[currentIdx] < heap[shiftIdx]) {
        swap(shiftIdx, currentIdx);
        currentIdx = shiftIdx;
        leftIdx = getLeftChild(currentIdx);
      } else {
        return;
      }
    }
  }

}

void main() {
  List array = [43, 12, 65, 12, 76, 45, 21];
  Heap heapSample = Heap(array);
  heapSample.display();
  // heapSample.remove();
  // heapSample.display();
  // heapSample.insert(32);
  // heapSample.display();
  // heapSample.peek();
}
