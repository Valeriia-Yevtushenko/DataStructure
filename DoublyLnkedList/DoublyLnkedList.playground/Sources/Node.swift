import Foundation

public class Node<Value: Equatable>: Equatable {
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
    
    public static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.next == rhs.next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "value: \(value), next: nil"
        }
        
        return "value: \(value), next: { \(next) }"
    }
}
