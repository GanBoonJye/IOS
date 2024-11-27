import UIKit

let num = [3,5,7,10,12,20,30]

var smallest = num[0]
var largest = num[0]

for number in num {
    if number < smallest {
        smallest = number
    }
    if number > largest {
        largest = number
    }
    
}

print("Smaller \(smallest)")
print("Larger \(largest)")
