class Heap
{
  List heap=[];
  Heap(List array)
  {
    buildHeap(array);
  }
  void buildHeap(List array)
  {
    heap=array;
    for(int i=getparent(array.length-1);i>=0;i--)
    {
      shiftDown(i);
    }
  }

  int getparent(int i)
  {
    return (i-1)~/2;
  }

  void shiftDown(int currentIdx)
  {
    int lastIdx=heap.length-1;
    int leftIdx=leftChild(currentIdx);
    while(leftIdx<=lastIdx)
    {
      int rightIdx=rightChild(currentIdx);
      int shiftIdx;
      if(rightIdx<=lastIdx&& heap.elementAt(rightIdx)<heap.elementAt(leftIdx))
      {
        shiftIdx=rightIdx;
      }
      else
      {
        shiftIdx=leftIdx;
      }
      if(heap.elementAt(currentIdx)>heap.elementAt(shiftIdx))
      {
        swap(shiftIdx,currentIdx);
        currentIdx=shiftIdx;
        leftIdx=leftChild(currentIdx);
      }
      else
      {
        return;
      }
    }
  }
  void swap(int i,int j)
  {
    int temp=heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }
  int leftChild(int i)
  {
    return (2*i)+1;
  }
  int rightChild(int i)
  {
    return (2*i)+2;
  }

  void peek()
  {
    print(heap[0]);
  }

  void remove()
  {
    swap(0,heap.length-1);
    heap.removeLast();
    shiftDown(0);
  }

  void insert(int value)
  {
    heap.add(value);
    shiftUp(heap.length-1);
  }

  void shiftUp(int currentIdx)
  {
    int parentIdx=getparent(currentIdx);
    while(currentIdx>=0 && heap.elementAt(parentIdx)>heap.elementAt(currentIdx))
    {
      swap(parentIdx, currentIdx);
      currentIdx=parentIdx;
      parentIdx=getparent(currentIdx);
    }
  }
}