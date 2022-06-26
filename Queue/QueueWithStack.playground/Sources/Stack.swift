import Foundation

public struct Stack<Element> {
    fileprivate var storage: [Element] = []
    
    public init() {}
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
  
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
  
    public mutating func pop() -> Element? {
        return storage.popLast()
    }
  
    public func peek() -> Element? {
        return storage.last
    }
    
    public func reversed() -> Stack<Element> {
        var stack = Stack()
        stack.storage = storage.reversed()
        return stack
    }
    
    public mutating func removeAll() {
        storage.removeAll()
    }
}
