import UIKit

var num = 4

for i in 1...num{
    for _ in 1...i {
        print("*",terminator: "")
    }
    print("")
}
for i in 1...num-1{
    for _ in 1...num-1 {
        print("*",terminator: "")
    }
    print("")
    num -= 1
}
