import Foundation

public struct DoublyLinkedList<Value: Equatable> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
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
        if isEmpty {
            head = Node(value: value)
            tail = head
        } else {
            let newNode = Node(value: value, next: head)
            head?.previous = newNode
            head = newNode
        }
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
    
    public mutating func insert(_ value: Value, after node: Node<Value>) {
    
        let newNode = Node(value: value, next: node.next, previous: node)
        node.next = newNode
        newNode.previous = newNode
    }
    
    public mutating func removeFirst() {
        head = head?.next
        
        if isEmpty {
            tail = nil
        }
    }
    
    public mutating func removeLast() {
        guard tail != nil, head != nil else {
            return
        }
        
        if tail == head {
            tail = nil
            head = nil
        } else {
            tail = tail?.previous
            tail?.next = nil
        }
    }
    
    public mutating func remove(after node: Node<Value>) {
        let removingNode = node.next
        node.next = removingNode?.next
        removingNode?.next?.previous = node
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
        var currentNode = head
        var count = 0
        
        while currentNode != nil {
            elements.append(currentNode?.value)
            currentNode = currentNode?.next
        }

        return elements.compactMap { $0 }
    }
}
