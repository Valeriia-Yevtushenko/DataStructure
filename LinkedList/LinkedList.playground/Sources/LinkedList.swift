import Foundation

public struct LinkedList<Value: Equatable> {
    public var head: Node<Value>?
    
    public init() {}
  
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        var currentNode = head
        var count = 0
        
        while currentNode != nil {
            count += 1
            currentNode = currentNode?.next
        }
        
        return count
    }
    
    public mutating func push(_ value: Value) {
        let node = Node(value: value, next: head)
        head = node
    }
    
    public mutating func append(_ value: Value) {
        let newNode =  Node(value: value)
        
        guard head != nil else {
            head = newNode
            return
        }
        
        var last = head
        
        while last?.next != nil {
            last = last?.next
        }
        
        last?.next = newNode
    }
    
    public mutating func insert(_ value: Value, after node: Node<Value>) {
        let newNode =  Node(value: value, next: node.next)
        node.next = newNode
    }
    
    public mutating func removeLast() {
        guard head != nil else {
            return
        }
        
        var last = head
        
        while last?.next?.next != nil {
            last = last?.next
        }
        
        last?.next = nil
    }
    
    public mutating func removeFirst() {
        head = head?.next
    }

    public mutating func remove(after node: Node<Value>) {
        node.next = node.next?.next
    }
    
    public func search(by value: Value) -> Node<Value>? {
        var element = head
        
        while element?.next != nil {
            if element?.value == value {
                return element
            }
            
            element = element?.next
        }
        
        return nil
    }
    
    public func element(at index: Int) -> Node<Value>? {
        var count: Int = 0
        var element = head
        
        while count != index {
            element = element?.next
            count += 1
        }
        
        return element
    }
    
    public func allValues() -> [Value] {
        var elements: [Value?] = []
        var last = head
        
        if last != nil {
            elements.append(head?.value)
        }
        
        while last?.next != nil {
            last = last?.next
            elements.append(last?.value)
        }

        return elements.compactMap { $0 }
    }
}
