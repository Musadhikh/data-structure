import Foundation

extension LinkedList: Collection {
    
    public struct Index: Comparable {
        public var node: Node<Value>?
        
        static public func == (lhs: Index, rhs: Index) -> Bool {
            switch(lhs.node, rhs.node) {
            case let (left?, right?): return left.next === right.next
            case (nil, nil): return true
            default: return false
            }
        }
        
        static public func <(lhs: Index, rhs: Index) -> Bool {
            guard lhs != rhs else { return false }
            
            let nodes = sequence(first: lhs.node) { $0?.next }
            return nodes.contains { $0 === rhs.node }
        }
    }
    
    public var startIndex: Index {
        return Index(node: head)
    }
    
    public var endIndex: Index {
        return Index(node: tail?.next)
    }
    
    public func index(after i: Index) -> Index {
        return Index(node: i.node?.next)
    }
    
    public subscript(position: Index) -> Value {
        return position.node!.value
    }

}
