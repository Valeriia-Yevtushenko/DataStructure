import Foundation

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
