> # Doubly Linked list
Doubly linked list is a linked data structure that consists of a set of sequentially linked records called nodes. Each node contains three fields: two link fields (references to the previous and to the next node in the sequence of nodes) and one data field. The beginning and ending nodes' previous and next links, respectively, point to some kind of terminator, typically are nill.
Operations that can be performed on doubly linked lists include insertion, deletion and traversal.

![doubly-linked-list](https://user-images.githubusercontent.com/78361312/175784945-1550cce8-113c-450c-88f8-8b93c7ce87d1.png)

|     Action    | Performance |
| ------------- | ----------- |
|        Push   | O(1)        |
| Append        | O(1)        |
|Inserting at a particular index|O(n)|
|Removing the first node    | O(1)  |
|Removing the last node        | O(1) |
|Removing a node after a particular node|O(n)|
|Searching the node with particular index|O(n)|
| Getting head | O(1)        |
| Checking if is linked list empty  | O(1)        |
| Getting count|O(n)|

#### Single Linked List VS Doubly Linked List
![image-38](https://user-images.githubusercontent.com/78361312/175785402-2575a861-1a1d-4558-ba85-04d330e1fcea.jpg)

Doubly linked list has more efficient iteration, especially if you need to ever iterate in reverse (which is horribly inefficient with a single linked list), and more efficient deletion of specific nodes.
We can use a doubly linked list to execute heaps, stacks, queue and binary trees.
#### Code Example
```Swift
var linkedList = LinkedList<Int>()

print("---Example of push---")
linkedList.push(1)
linkedList.push(2)
linkedList.push(3)
printLinkedList(linkedList)

print("---Example of append---")
linkedList.append(4)
printLinkedList(linkedList)

print("---Example of inserting at a particular index---")
linkedList.insert(5, after: linkedList.head!)
printLinkedList(linkedList)

print("---Example of removing the last node---")
linkedList.removeLast()
printLinkedList(linkedList)

print("---Example of removing a node after a particular node---")
linkedList.remove(after: linkedList.head!)
printLinkedList(linkedList)

print("---Example of searching the node with particular value---")
print("node with particular value -", linkedList.search(by: 3), terminator: "\n\n")

print("---Example of searching the node with particular index---")
print("node with particular index -", linkedList.element(at: 2), terminator: "\n\n")

print("---Example of getting all values---")
print("all values -", linkedList.allValues(), terminator: "\n\n")

print("---Example of getting count---")
print("count -", linkedList.count, terminator: "\n\n")

print("---Example of checking if is linked list empty---")
print("is empty -", linkedList.isEmpty, terminator: "\n\n")

print("---Example of getting head---")
print("head -",linkedList.head)
```

#### Result
<img width="742" alt="Screenshot 2022-06-25 at 14 48 04" src="https://user-images.githubusercontent.com/78361312/175772253-bf80ae2f-0c51-4dd4-abf8-a6dd1639fa43.png">
