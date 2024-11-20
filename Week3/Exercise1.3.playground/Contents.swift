import UIKit

var year = 2024

if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
    print("Year is a leap year")
}
else {
    print("Year is not a leap year")
}
