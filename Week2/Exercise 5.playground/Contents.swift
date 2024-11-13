import UIKit

var calendar:Calendar = Calendar.current
var now = Date()
var year = calendar.component(.year, from: now)

var brithdayDate = 2007
var age = year - brithdayDate
print("Your Age is \(age)")
