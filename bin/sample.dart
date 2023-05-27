// class Heap {
//   List heap = [];
//   Heap(List array) {
//     buildHeap(array);
//   }

//   void buildHeap(List array) {
//     for (int i = getParent(heap.length - 1); i >= 0; i--) {
//       shiftDown(i);
//     }
//   }

//   int getParent(int i) {
//     return (i - 1) ~/ 2;
//   }

//   void shiftDown(int currentIdx) {
//     int lastIdx = heap.length - 1;
//     int leftIdx = leftChild(currentIdx);
//     while(leftIdx<=lastIdx)
//     {
//       int rightIdx=rightChild(currentIdx);
//       int shiftIdx;
//       if(rightIdx<=lastIdx && heap.elementAt(rightIdx)<heap.elementAt(leftIdx))
//       {
//         shiftIdx=rightIdx;
//       }
//       else{
//         shiftIdx=leftIdx;
//       }
//       if(heap.elementAt(leftIdx)>heap.elementAt(shiftIdx))
//       {
//         swap(shiftIdx,currentIdx);
//         currentIdx=shiftIdx;
//         leftIdx=leftChild(currentIdx);
//       }
//       else{
//         return;
//       }
//     }
//   }

//   void swap(int i,int j)
//     {
//       int temp=heap[i];
//       heap[i]=heap[j];
//       heap[j]=temp;
//     }
  
//   int leftChild(int i) {
//     return (2 * i) + 1;
//   }

//   int rightChild(int i) {
//     return (2 * i) + 2;
//   }

//   void display()
//   {
//     print(heap);
//   }
// }


// void main()
// {
//   List array=[34,12,2,56,3,5,13];
//   Heap heap=Heap(array);
//   heap.display();
// }