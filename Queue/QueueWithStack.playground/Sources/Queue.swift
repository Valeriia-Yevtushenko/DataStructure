import Foundation

public struct Queue<Value> {
    private var leftStack: Stack<Value> = Stack()
    private var rightStack: Stack<Value> = Stack()
    
    public init() {}
    
    public var isEmpty: Bool {
        return leftStack.isEmpty && rightStack.isEmpty
    }
    
    public func peek() -> Value? {
        !leftStack.isEmpty ? leftStack.peek() : rightStack.peek()
    }
    
    public mutating func enqueue(_ element: Value) {
        rightStack.push(element)
    }
    
    public mutating func dequeue() -> Value? {
        guard !isEmpty else {
            return nil
        }
        
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        
        return leftStack.pop()
    }
}
