> # Single Linked list
A linked list is a collection of values arranged in a linear unidirectional sequence. Singly linked lists contain nodes which have a data field as well as 'next' field, which points to the next node in line of nodes. Operations that can be performed on singly linked lists include insertion, deletion and traversal.
![linked-list](https://user-images.githubusercontent.com/78361312/175770886-3a548b80-40ff-4dc7-ac44-23d3fff65c02.png)

|     Action    | Performance |
| ------------- | ----------- |
|        Push   | O(1)        |
| Append        | O(n)        |
|Inserting at a particular index|O(n)|
|Removing the first node    | O(1)  |
|Removing the last node        | O(n) |
|Removing a node after a particular node|O(n)|
|Searching the node with particular index|O(n)|
| Getting head | O(1)        |
| Checking if is linked list empty  | O(n)        |
| Getting count|O(n)|

#### Array VS LinkedList
A linked list has several theoretical advantages over contiguous storage options such as the Swift Array:
  - Constant time insertion and removal from the front of the list.
  - Reliable performance characteristics.
There are many things linked lists are bad at that arrays are good at, mostly because arbitrary element lookup in a linked list is O(n), whereas in arrays it is O(1). So if there are less add and remove operations and more search operations requirement, Swift Array would be your best bet.

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
