import Foundation

public struct Queue<Value> {
    fileprivate var list: DoublyLinkedList<Value> = DoublyLinkedList()
    
    public init() {}

    public var isEmpty: Bool {
        return list.isEmpty
    }
  
    public func peek() -> Value? {
        return list.head?.value
    }
  
    public mutating func enqueue(_ element: Value) {
        list.append(element)
    }
  
    public mutating func dequeue() -> Value? {
        isEmpty ? nil : list.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return String(describing: list)
    }
}
