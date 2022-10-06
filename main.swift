import Foundation

func sort(unsortedList: [String]) {
    var myUnsortedList = lowerList
    var sortedList = unsortedList
    var totalSwaps = 0
    var passSwaps = 0
    var passes = 0

    //print("\(unsortedList)\n")

    for index in 1 ..< myUnsortedList.count {
        passSwaps = 0
        passes += 1
        var y = index
        while y > 0  && myUnsortedList[y-1] > myUnsortedList[y] {
            myUnsortedList.swapAt(y-1, y)
            sortedList.swapAt(y-1, y)
            totalSwaps += 1
            passSwaps += 1
            y -= 1
        }
    }

    for i in 0 ..< sortedList.count {
        print(sortedList[i])
    }
    
}

var inputList = [String]()
var lowerList = [String]()

while let input = readLine() {
    inputList.append(input)
    lowerList.append((input.lowercased()).folding(options: .diacriticInsensitive, locale: Locale.current))
}

sort(unsortedList: inputList)
