import Foundation
/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

/*:
 ## Arrays
 ### Challenge 1.
 Which of the following are valid statements?
*/
 
//let array1 = [Int]()      // valid
//let array2 = []           // invalid
//let array3: [String] = [] // valid

//: Given:
let array4 = [1, 2, 3]

//: Which of the following five statements are valid

//print(array4[0])  // valid
//print(array4[5])  // invalid
//array4[1...2]     // valid
//array4[0] = 4     // invalid
//array4.append(4)  // invalid

//: Given:
var array5 = [1, 2, 3]

//: Which of the five statements are valid?

//array5[0] = array5[1]                 // valid
//array5[0...1] = [4, 5]                // valid
//array5[0] = "Six"                     // invalid
//array5 += 6                           // invalid
//for item in array5 { print(item) }    // valid

/*:
 ### Challenge 2
 Write a function that removes the first occurrence of a given integer from an array of integers.
 This is the signature of the function:
 
 ```
 func removingOnce(_ item: Int, from array: [Int]) -> [Int]
 ```
*/

 func removingOnce(_ item: Int, from array: [Int]) -> [Int]
 {
   var array1 = array

    for (index, value) in array1.enumerated()
     {
      if(value == item) 
      {
        array1.remove(at:index)
       break
      }
     }
     return array1
 }
 //var array:[Int] = [2,5,4,6,67,3,4,6,45]
 //array = removingOnce(6,from : array)
 //array.forEach({print($0, terminator : " ")})
/*:
 ### Challenge 3
 Write a function that removes all occurrences of a given integer from an array of integers. 
 This is the signature of the function:
 
```
 func removing(_ item: Int, from array: [Int]) -> [Int]
```
*/

 func removing(_ item: Int, from array: [Int]) -> [Int]
 {
   var array1 = array
   var count = 0
 while count<array1.count
 {
  if array1[count] == item
  {
      array1.remove(at: count)
  }
  else 
  {
      count+=1
  }
 }
     return array1
 }
// array = removing(6,from : array)
 //array.forEach({print($0, terminator : " ")})


/*:
 ### Challenge 4
 Arrays have a `reversed()` method that returns an array holding the same elements as the original array, in reverse order. 
 Write a function that does the same thing, without using `reversed()`. This is the signature of the function:

 ```
 func reversed(_ array: [Int]) -> [Int]
 ```
*/

func reversed(_ array: [Int]) -> [Int]
{
 var newArray:[Int] = []
 var count = array.count-1
 while(count>=0)
 {
     newArray.append(array[count])
     count-=1
 }
 return newArray
}
//var array:[Int] = [2,5,4,6,67,3,4,6,45,9]
 //array = reversed(array)
 //array.forEach({print($0, terminator : " ")})

/*:
 ### Challenge 5
 Write a function that returns the middle element of an array.
 When array size is even, return the first of the two middle elements.
 
 ```swift
 func middle(_ array: [Int]) -> Int?
 ```
*/

 func middle(_ array: [Int]) -> Int?
 {
  guard array.count%2==0 else {return array[array.count/2]}
  return array[array.count/2-1]
 }


/*:
 ### Challenge 6
 
 Write a function that calculates the minimum and maximum value in an array of integers. 
 Calculate these values yourself, do not use the methods `min` and `max`. 
 Return `nil` if the given array is empty.
 
 This is the signature of the function:

```
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
```
 
 */
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
{
 if numbers.isEmpty 
 { 
     return nil
 }
 else
 {
     var min = numbers[0]
     var max = numbers[0]
     
   for item in numbers
   {
       if item < min 
       {
        min = item
       }
       if item > max
       {
        max = item
       }
   }
   return (min: min, max: max)
 }
}

/*:
 ## Dictionaries
 ### Challenge 7
 Which of the following statements are valid?
 */

//let dict1: [Int, Int] = [:]   // invalid
//let dict2 = [:]               // invalid
//let dict3: [Int: Int] = [:]   // valid

//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//: Which of the following are valid:

//dict4[1]          // invalid
//dict4["One"]      // valid
//dict4["Zero"] = 0 // invalid
//dict4[0] = "Zero" // invalid

//: Given
var dict5 = ["NY": "New York", "CA": "California"]

//: Which of the following are valid?
//dict5["NY"]                   // invalid
//dict5["WA"] = "Washington"    // valid
//dict5["CA"] = nil             // valid


/*:
 ### Challenge 8
 Given a dictionary with 2-letter state codes as keys and the full state name as values, write a function that prints all the states whose name is longer than 8 characters. For example, for this dictionary ["NY": "New York", "CA": "California"] the output would be "California".
 */
 

 var dictionary  = ["NY": "New York", "CA": "California"] 
 for (_,name) in dictionary
 {
   if(name.count > 8)
   {
print(name)
   }
 }



/*:
 ### Challenge 9
 Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.
 This is the signature of the function:
 ```
 func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]
 ```
 */
 func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]
 {
     var dictionary = dict2
     for (key,item) in dict1
     {
       if dict2.keys.contains(key)
       {
           continue
       }
       dictionary.updateValue(item,forKey: key)
     }
     return dictionary
 }



/*:
 ### Challenge 10
 Declare a function `occurrencesOfCharacters` that calculates which characters occur in a string, as well as how often each of these characters occur.
 Return the result as a dictionary. This is the function signature:
 ```
 func occurrencesOfCharacters(in text: String) -> [Character: Int]
 ```
 Hint: `String` is a collection of characters that you can iterate over with a for statement.
*/
func occurrencesOfCharacters(in text: String) -> [Character: Int]
{
var dictionary: [Character: Int] = [:]
 for item in text
 {
     if dictionary.keys.contains(item)
     {
        dictionary[item]!+=1
     }
     else
     {
    dictionary[item] = 1
     }
 }
return dictionary
}


/*
 Bonus: To make your code shorter, dictionaries have a special subscript operator that let you add a default value if it is not found in the dictionary. For example, dictionary["a", default: 0] creates a 0 entry for the character "a" if it is not found instead of returning nil.
*/
/*
func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
 var occurrences: [Character: Int] = [:]
 for character in text {
    occurrences[character, default: 0] += 1
 }
 return occurrences
}*/


/*:
 ### Challenge 11
 Write a function that returns true if all of the values of a dictionary are unique.  Use a set to test uniqueness.
 This is the function signature:
 ```
 func isInvertible(_ dictionary: [String: Int]) -> Bool
 ```
 */
 func isInvertible(_ dictionary: [String: Int]) -> Bool
 {

     var values =  Set<Int>()
     for item in dictionary.values
     {
values.insert(item)
     }
 return dictionary.count == values.count ?  true :  false
 }


