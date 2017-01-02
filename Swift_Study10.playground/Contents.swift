/* Date : 2016.01.02
 * Create : CreateXu
 * File : Swift_Study10
 * Description : Function
 */


import UIKit

// 1. 사용자 정의 함수

//매개변수의 반환값이 모두 없는 함수
func printHello() {
    print("안녕하세요")
}

//매개변수가 없지만 반환값은 있는 함수
func sayHello() -> String {
    let returnValue = "안녕하세요"
    return returnValue
}

//매개변수는 있으나 반환값이 없는 함수
func printHelloWithName(name : String) {
    print("\(name)님, 안녕하세요")
}


//매개변수와 반환값이 모두 있는 함수
func sayHelloWithName(name : String) -> String {
    let returnValue = "\(name)님, 안녕하세요"
    return returnValue
}


// 2. 함수의 호출
let inputName = "CreateXu"
printHello()
sayHello()
printHelloWithName(name: inputName)
sayHelloWithName(name: inputName)


func times(x:Int, y:Int) -> Int {
    return (x*y)
}

times(x:5, y:10)
times(x:y:)(5,10)

// 3. 함수의 반환값과 튜플

func getIndvInfo() -> (Int, String) {
    let height = 180
    let name = "Createxu"
    
    return (height, name)
}

getIndvInfo()

var uInfo = getIndvInfo()
uInfo.0
uInfo.1

var (a,b) = getIndvInfo()
a
b

func getUserInfo() -> (h:Int, g:Character, n:String) {
    let gender : Character = "M"
    let height = 180
    let name = "CreateXu"
    
    return (height, gender, name)
}

var result = getUserInfo()

result.h
result.g
result.n

//typealias

typealias infoResult = (Int, Character, String)

func getUserInfo2() -> infoResult {
    let gender : Character = "M"
    let height = 180
    let name = "CreateXu"
    
    return (height, gender, name)
}

let info = getUserInfo2()

info.0
info.1
info.2