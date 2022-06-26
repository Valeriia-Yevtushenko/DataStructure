import Foundation

public struct Queue<Value> {
    private var storage: [Value] = []
    
    public init() {}

    public var isEmpty: Bool {
        return storage.isEmpty
    }
  
    public func peek() -> Value? {
        return storage.first
    }
  
    public mutating func enqueue(_ element: Value) {
        storage.append(element)
    }
  
    public mutating func dequeue() -> Value? {
        isEmpty ? nil : storage.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        var value: [String] = storage.map {
            String(describing: $0)
        }
        return "front " + value.joined(separator:" <- ") + " back"
    }
}
