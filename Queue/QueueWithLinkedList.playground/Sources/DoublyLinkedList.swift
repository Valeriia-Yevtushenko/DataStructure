import Foundation

public struct DoublyLinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public mutating func append(_ value: Value) {
        let newNode = Node(value: value)
      
        guard let tailNode = tail else {
            head = newNode
            tail = newNode
            return
        }
      
        newNode.previous = tailNode
        tailNode.next = newNode
        tail = newNode
    }
    
    public mutating func removeFirst() -> Value? {
        let value = head?.value
        head = head?.next
        
        if isEmpty {
            tail = nil
        }
        
        return value
    }
}

extension DoublyLinkedList: CustomStringConvertible {
    public var description: String {
        guard !isEmpty else {
            return ""
        }
        
        var value = ""
        var current = head
        
        while let node = current {
            value.append("\(node.value) <- ")
            current = node.next
        }
        
        return "front <- " + value + "back"
    }
}
