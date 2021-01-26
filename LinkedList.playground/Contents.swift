import UIKit

// Linked List

/* A linked list is a common data structure made of a chain of nodes in which each node
 contains a value and a pointer to the next node in the chain. */

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}
class LinkedList {
    var head: Node?
  
    func displayListItems() {
        print("Here is whats inside of your list: ")
        var current  = head
        while current != nil {
            // Node value
            print(current?.value ?? "")
            current = current?.next
        }
    }
    func insert(value: Int) {
        // Insert value in empty list
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
    }
    
    // Delete value
    func delete(value: Int) {
        if head?.value == value {
            head = head?.next
        }
        
        var prev: Node?
        var current = head
        
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
    }
    
    
    func firstNode() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
}
let sampleList = LinkedList()
// Insert 1
sampleList.insert(value: 1)
// 1 -> nil
sampleList.insert(value: 2)
// 1 -> 2 -> nil
sampleList.insert(value: 3)
// 1 -> 2 -> 3 -> nil

sampleList.delete(value: 1)
// 1 -> 3 -> nil
sampleList.displayListItems()


