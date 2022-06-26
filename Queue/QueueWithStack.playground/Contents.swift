import Foundation

var queue = Queue<Int>()

print("---Example of enqueue---")
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
print(queue, terminator: "\n\n")

print("---Example of dequeue---")
print("pop -", queue.dequeue(), terminator: "\n\n")

print("---Example of peek---")
print("first element - ", queue.peek(), terminator: "\n\n")

print("---Example of checking if is queue empty---")
print("is empty -", queue.isEmpty)
