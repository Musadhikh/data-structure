func example(of title: String, onComplete: () -> Void) {
    print("\n---Example of \(title)---")
    onComplete()
}

example(of: "creating and linking nodes") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}

example(of: "push") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
}

example(of: "append") {
    var list = LinkedList<Int>()
    list.appened(4)
    list.appened(5)
    list.appened(6)
    
    print(list)
}

example(of: "inserting at a particular index") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before insterting: \(list)")
    var middleNode = list.node(at: 1)!
    for _ in 1...4 {
        middleNode = list.insert(-1, after: middleNode)
    }
    print("After inserting: \(list)")
}

example(of: "pop") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before poping list: \(list)")
    let poppedValue = list.pop()
    print("After poping list: \(list)")
    print("popped value: " + String(describing: poppedValue))
}

example(of: "remove the last node") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing the last node: \(list)")
    let removedValue = list.removeLast()
    print("After removing the last node: \(list)")
    print("removed value: " + String(describing: removedValue))
}

example(of: "remove a node after a particular node") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing at particular node: \(list)")
    let index = 1
    let node = list.node(at: index - 1)!
    let removedValue = list.remove(after: node)
    print("After removing at index \(index): \(list)")
    print("removed value: " + String(describing: removedValue))
}

example(of: "using collection") {
    var list = LinkedList<Int>()
    
    for i in 0...9 {
        list.appened(i)
    }
    
    print("List: \(list)")
    
    print("First element: \(list[list.startIndex])")
    print("array containing first 3 elements: \(Array(list.prefix(3)))")
    print("array containing last 3 elements: \(Array(list.suffix(3)))")
    
    let sum = list.reduce(0, +)
    print("Sum of all values: \(sum)")
}

//COW = copy-on-write
example(of: "linked list COW") {
    var list1 = LinkedList<Int>()
    list1.appened(1)
    list1.appened(2)
    
    var list2 = list1
    
    print("List 1: \(list1)")
    print("List 2: \(list2)")
    
    print("After appending 3 to list2")
    list2.appened(3)
        
    print("List 1: \(list1)")
    print("List 2: \(list2)")
}

