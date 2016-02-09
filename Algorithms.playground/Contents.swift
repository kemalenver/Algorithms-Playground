import Cocoa;
import XCPlayground // Set Xcode to MacOS, not IOS

/*: 
    1. Selection Sort
    Has O(n2) time complexity
*/

func swapArrayValues<T: Comparable>(inout array: [T], indexA: Int, indexB: Int) {

    let temp = array[indexA]
    
    array[indexA] = array[indexB]
    
    array[indexB] = temp
}

func indexOfMin<T: Comparable>(array: [T], startIndex: Int) -> Int {
 
    var minValue = array[startIndex]
    var minIndex = startIndex
    
    for i in startIndex...array.count-1 {
     
        if array[i] < minValue {
         
            minIndex = i
            minValue = array[i]
        }
    }
    
    return minIndex
}

func selectionSort<T: Comparable>(inout array: [T]) {
        
    for var position = 0; position < array.count; position++ {
     
        let min = indexOfMin(array, startIndex: position)
        swapArrayValues(&array, indexA: position, indexB: min)
    }
}


/*:
2. Insertion Sort
Has O(n2) time complexity
*/

func insert<T: Comparable>(inout array: [T], rightIndex: Int, value: T) {
    
    var position = rightIndex
    
    while position >= 0 && array[position] > value {
        
        array[position+1] = array[position]
        position--
    }
    
    array[position+1] = value

}

func insertionSort<T: Comparable>(inout array: [T]) {

    for var i = 1; i < array.count; i++ {
        
        insert(&array, rightIndex: i-1, value: array[i])
    }
    
}


var array1 = [2, 3, 16, 123, 1, 34535, 12, 654, 2, -3, 0x10]
selectionSort(&array1)

var array2 = [2, 3, 16, 123, 1, 34535, 12, 654, 2, -3, 0x10]
insertionSort(&array2)


//swapValues(&unsortedArray, indexA: 0, indexB: 2)
//
//indexOfMin(unsortedArray, startIndex: 4)




