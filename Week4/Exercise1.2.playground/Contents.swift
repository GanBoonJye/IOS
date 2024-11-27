import UIKit

var num = 2534
var number = String(num)
var sum = 0

for char in number{
    if let digit = Int(String(char)) {
        sum += digit
    }
}
print("The sum of the digit of \(num) is \(sum)")


