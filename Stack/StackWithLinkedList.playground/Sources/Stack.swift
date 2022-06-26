import Foundation

public struct Stack<Element> {
    fileprivate var list: LinkedList<Element> = LinkedList()
    
    public init() {}
    
    public var isEmpty: Bool {
        return list.isEmpty
    }
  
    public mutating func push(_ element: Element) {
        list.push(element)
    }
  
    public mutating func pop() -> Element? {
        return list.removeFirst()
    }
  
    public func peek() -> Element? {
        return list.last
    }
}

extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
        guard list.head != nil else {
            return "Empty list"
        }
        
        var last = list.head
        var result = """
-top-\n
"""
        
        while let element = last {
            if element.next == nil {
                result.append("  \(element.value)  \n-----")
            } else {
                result.append("  \(element.value)  \n")
            }
            
            last = last?.next
        }
        
        return result
  }
}
