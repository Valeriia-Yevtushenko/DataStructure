import Foundation

public class Node<Value> {
    public var value: Value
    public var next: Node<Value>?
    public weak var previous: Node<Value>?
  
    public init(value: Value,
                next: Node<Value>? = nil,
                previous: Node<Value>? = nil) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}
