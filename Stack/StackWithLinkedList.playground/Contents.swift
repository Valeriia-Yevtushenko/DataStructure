import Foundation

var stack = Stack<Int>()

print("---Example of push---")
stack.push(1)
stack.push(2)
stack.push(3)
print(stack, terminator: "\n\n")

print("---Example of pop---")
print("pop -", stack.pop(), terminator: "\n\n")

print("---Example of peek---")
print("last element - ", stack.peek(), terminator: "\n\n")

print("---Example of checking if is stack empty---")
print("is empty -", stack.isEmpty)
