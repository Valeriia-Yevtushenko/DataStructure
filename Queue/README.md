> # Queue

Queue is a collection of entities and can be modified by the addition of entities at one end of the sequence and the removal of entities from the other end of the sequence. 
Queues use FIFO or first-in-first-out ordering, meaning the first element that was enqueued will be the first to get dequeued. Queues are handy when you need to maintain the order of your elements to process later.

There are only two principal operations for a queue: 
  - enqueue - insert an element at the back of the queue
  - dequeue - remove the element at the front of the queue
 
![1200px-Fifo_queue svg](https://user-images.githubusercontent.com/78361312/175801308-855eaa78-f480-4e53-b637-dbf1ea1eb83c.png)

## Array-based implementation
Enqueue is very fast thanks to an O(1) append operation. Removing an element from the front of the queue is an O(n) operation. To dequeue, you remove the element from the beginning of the array. This is always a linear time operation, because it requires all the remaining elements in the array to be shifted in memory.

#### Performance

|     Action    | Performance |
| ------------- | ----------- |
| dequeue       | O(n)        |
| enqueue       | O(1)        |

## Doubly linked list implementation

Main problem with Queue implementation with Array is dequeuing an item takes linear time. With the linked list implementation, you reduced it to a constant operation, O(1). Doubbly linked list keeps references to the beginning and end, so all you needed to do was update the node’s previous and next pointers.
Despite O(1) performance, it suffers from high overhead. Each element has to have extra storage for the forward and back reference. Moreover, every time you create a new element, it requires a relatively expensive dynamic allocation. By contrast QueueArray does bulk allocation which is faster.

#### Performance

|     Action    | Performance |
| ------------- | ----------- |
| dequeue       | O(1)        |
| enqueue       | O(1)        |
 
 
## Double stack implementation

The idea behind using two stacks is simple. Whenever you enqueue an element, it goes in the right stack. When you need to dequeue an element, you reverse the right stack and place it in the left stack so you can retrieve the elements using FIFO order.
With the double stack implementation, you also reduced dequeuing to a constant operation, O(1). 
It beats the doubly linked list in spacial locality. This is because array elements are next to each other in memory blocks. So a large number of elements will be loaded in a cache on first access. Compare this to a linked list where the elements aren’t in contiguous blocks of memory. This could lead to more cache misses which will increase access time.

#### Performance

|     Action    | Performance |
| ------------- | ----------- |
| dequeue       | O(1)        |
| enqueue       | O(1)        |

## Code Example

```Swift
import Foundation

var queue = Queue<Int>()

print("---Example of enqueue---")
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
print(queue, terminator: "\n\n")

print("---Example of dequeue---")
print("pop -", queue.dequeue(), terminator: "\n\n")

print("---Example of peek---")
print("first element - ", queue.peek(), terminator: "\n\n")

print("---Example of checking if is queue empty---")
print("is empty -", queue.isEmpty)
```

## Result
<img width="330" alt="Screenshot 2022-06-26 at 09 17 33" src="https://user-images.githubusercontent.com/78361312/175802124-cde809b0-a8af-467d-9840-dafb43d626be.png">

