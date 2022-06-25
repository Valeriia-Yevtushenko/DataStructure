import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    
    public init() {}
  
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var last: Value? {
        return head?.value
    }
    
    public mutating func push(_ value: Value) {
        let node = Node(value: value, next: head)
        head = node
    }
    
    public mutating func removeFirst() -> Value? {
        let oldValue = head?.value
        head = head?.next
        return oldValue
    }
}
