> # Stack

The main goal of building a stack is to enforce how you access your data. In computer science, a stack is known as the LIFO (last in first out) data structure. Elements that are pushed in last are the first ones to be popped out. Stack can be implemented with array or linked list. This realizations have the same performance in Swift.

There are only two principal operations for a stack: 
  - push - adding an element to the top of the stack 
  - pop - removing the top element of the stack

#### Performance

|     Action    | Performance |
| ------------- | ----------- |
|        Pop   | O(1)        |
| push        | O(1)        |
| peek        | O(1)        |

![640px-Data_stack svg](https://user-images.githubusercontent.com/78361312/175772717-3b553c0c-3ad4-4d6d-bbd1-78da4a9c89a2.png)

#### Where is it used?
  - iOS uses the navigation stack to push and pop view controllers into and out of view.
  - Memory allocation uses stacks at the architectural level. Memory for local variables is also managed using a stack.
 
![figure-navigation-stack-1](https://user-images.githubusercontent.com/78361312/175772965-ee64a431-62b7-4ef6-9d9b-724f985f7986.jpg)

#### Code Example
```Swift
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

print("---Example of checking if is linked list empty---")
print("is empty -", stack.isEmpty)
```

#### Result
<img width="376" alt="Screenshot 2022-06-25 at 15 05 19" src="https://user-images.githubusercontent.com/78361312/175772760-96249703-1046-4e2a-927c-c8349042f23b.png">

