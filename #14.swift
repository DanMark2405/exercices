import Foundation
/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

/*:
 ## Error Handling
 ### Challenge 1
 Write a throwing function that converts a `String` to a number.
 */

enum NumberError: Error {
  case notANumber
}

func convertToInt( _ str: String)throws -> Int
{
   var number:Int? = Int(str)
   guard number != nil  else {
       throw NumberError.notANumber
   }
   return number!
}


/*:
 ### Challenge 2
 Write a throwing function that divides two given numbers.
 */
enum DivisionError: Error {
  case divisionByZero
}

func divideTwoNumbers ( _ a: Int, _ b: Int)throws -> Int
{
  guard b != 0 else {
     throw DivisionError.divisionByZero
  }
  return  a/b
}
/*:
 ### Challenge 3
 Write a throwing function that divides two given numbers passed as `String`. Handle different kinds of error from previous challenges
 */
 func divideTwoString (_ a:String,_ b:String) -> Int?
 {
     var result:Int?   
   do 
   {
       var x = try convertToInt(a)
       var y = try convertToInt(b)
       result = try divideTwoNumbers(x,y)
    //return try  divideTwoNumbers (try convertToInt(a), try convertToInt(b))  
   }
   catch DivisionError.divisionByZero
   {
   print( "Eror! Division by Zero!")
   }
   catch NumberError.notANumber
   {
      print( "Eror! This string cannot be converted to a number!")
   }
   catch 
   {
      print(error.localizedDescription)
   }
   return result
 }

print(divideTwoString("30","1"))

print(divideTwoString("21","7"))

print(divideTwoString("30","re"))


