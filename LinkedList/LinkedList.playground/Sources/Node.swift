import Foundation

public class Node<Value: Equatable> {
    public var value: Value
    public var next: Node?
  
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
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
