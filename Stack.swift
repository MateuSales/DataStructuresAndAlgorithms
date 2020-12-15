import Foundation

struct Stack<Element> {

    private var storage: [Element] = []
    
    init() {}
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "-------top--------\n"
        let bottomDivider = "\n------------------"
        
        let stackElements = storage.map { "\($0)"}.reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}


var stack = Stack<Int>()
stack.push(10)
stack.push(20)
stack.push(30)
stack.push(40)
print(stack)

stack.pop()
stack.pop()
print(stack)
