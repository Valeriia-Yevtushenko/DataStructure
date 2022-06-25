import Foundation

public func printLinkedList<Value>(_ linkedList: LinkedList<Value>) {
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
