import UIKit

// Constant Time O(1)
func checkFirstTime(names : [String]) {
    if let first = names.first {
        print(first)
    } else {
        print("no names")
    }
}

// Linear Time O(n)
// As data increases time increases
func printNames(names :[String]) {
    for name in names {
        print(name)
    }
}

// Quadratic Time O(n^2)
func printNewNames(names :[String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}


