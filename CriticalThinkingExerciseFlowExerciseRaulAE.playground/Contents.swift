import UIKit

var second = 0
var minute = 0
var hour = 0

var secStr = ""
var minStr = ""
var hourStr = ""

// I originally put 60 here but it made time pass too fast, I adjusted the value to be slightly more accurate to real seconds
while second < 600000 {
    second += 1
    if second >= 600000 {
        minute += 1
        second = 0
    }
    if minute >= 60 {
        hour += 1
        minute = 0
    }
    
    secStr = String(second/10000)
    minStr = String(minute)
    hourStr = String(hour)
    
    print(hourStr + ":" + minStr + ":" + secStr)
}
