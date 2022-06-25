import UIKit

public func printLinkedList<Value>(_ linkedList: DoublyLinkedList<Value>) {
    guard linkedList.head != nil else {
        print("Empty list")
        return
    }
    
    var last = linkedList.head
    
    while let element = last {
        if element.next == nil {
            print("\(element.value)", terminator: " ")
        } else {
            print("\(element.value) ->", terminator: " ")
        }
        
        last = last?.next
    }
    
    print("", terminator: "\n\n")
}


var linkedList = DoublyLinkedList<Int>()

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
linkedList.count

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
print("head -", linkedList.head)

