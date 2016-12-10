/* Date : 2016.12.11
 * Create : CreateXu
 * File : Swift_Study3
 * Description : Basic
 */

import UIKit

//Int, UInt

Int.max
Int.min

Int64.max
Int64.min

Int32.max
Int32.min

Int16.max
Int16.min

Int8.max
Int8.min

UInt.max
UInt.min

UInt64.max
UInt64.min

UInt32.max
UInt32.min

UInt16.max
UInt16.min

UInt8.max
UInt8.min


//Float, Double

var float1 : Float32
float1=0.1234567

var float2 : Float64
float2 = 0.1234567891234567

var double1 : Double
double1 = 0.1234567891234567



//Bool

var true1 = true

let good = true
let bad = false


//String

var study = "Swift Basic"

let language = "Swift"



//Character 한글자

var first : Character = "C"

let second : Character = "X"


//타입 어노테이션 (Type annotaion)

//1, 선언과 초기화를 분리할 경우

var year : Int

year = 2016


//2, 타입 추론으로 얻어지는 타입이 아닌, 다른 타입을 직접 지정할 필요가 있을 때

var age = 22

var age1 : Float = 22

print(age)
print(age1)



// 타입이 다른 변수끼리의 결합

var stmt = "CreateXu의 나이는"
var age2 = 22

var ageStmt = stmt + String(age2)

var stmt1 = "123"
var intstmt = Int(stmt1)

// 문자열 템플릿

let name = "CreateXu"
let yearStmt = "2016"
let monthStmt = "12"
let dayStmt = "11"

let profile = "\(name)은 \(yearStmt)년 \(monthStmt)월 \(dayStmt)에 공부했습니다."

print(profile)


// 문자열 템플릿을 통해 연산도 가능하다.

let apple=3
let banana=4
let orange=5
let melon=7

let hap = "합은 총 \(apple+banana+orange+melon)입니다."
print(hap)

let result = "합은 \(1+2+3+4+5)입니다."
print(result)

