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
 ## Classes
 ### Challenge 1

 Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
 
 Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
 
 - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
 - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
 - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
*/
class User
{

 var listOfLists = [String:List]()
func addList(_ list:List)
{
listOfLists.updateValue( list, forKey: list.name)
}
 func list (forName :String) -> List?
 {
  return listOfLists[forName]
 }


}
class List
{
 var name:String
 var namesOfFilms:[String]
 init( name:String, namesOfFilms:[String])
 {
   self.name = name
   self.namesOfFilms = namesOfFilms
 }
 func printList ()
 {
  namesOfFilms.forEach{ print($0, terminator:" ") }
  print()
 }

}

var jane = User()
var jonh = User()
var listJonh = List(name:"jonh" ,namesOfFilms: ["1","3","67"])

jonh.addList(listJonh)
jane.addList(listJonh)
listJonh.namesOfFilms.append("Three friends")
jonh.list(forName:"jonh")!.printList()
jane.list(forName:"jonh")!.printList()

/*
Создайте пользователей jane и john и попросите их создавать списки и делиться ими.
 Попросите `jane` и` john` изменить один и тот же список и вызвать `print` от обоих пользователей. Все ли изменения отражены?
*/

/*:
 
 What happens when you implement the same with structs and what problems do you run into?
 */
// структуры не являются ссылочными типами, поэтому если бы мы передавали один  и тот  же объект  структуры
// в разные объекты, то он просто  бы копировался в каждом обьекте. И при изменение  обьекта структуры одного обьекты , во втором бы
// объекте  ничего бы  не изменилось, так как они содержат различные объекты структуры, в отличии от класса



