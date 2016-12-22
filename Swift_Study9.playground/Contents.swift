/* Date : 2016.12.19
 * Create : CreateXu
 * File : Swift_Study9
 * Description : Optional
 */


import UIKit

//옵셔널타입 선언과 정의

var optInt : Int?
optInt = 3

var optString : String?
optString = "Swift"

var optDouble : Double?
optDouble = 1.11

var optArr : [String]?
optArr = ["JAVA", "PHP", "C", "PYTHON"]

var optDic : Dictionary<String, String>?
var optDic2 : [String:String]?

optDic=["수학" : "수", "국어" : "우"]

var optClass : AnyObject?


//옵셔널 타입은 결합 연산 또는 더하기 연산이 가능한 데이터 타입이 아님
//Int?와 Int는 서로 다른 타입이므로 연산이 불가능함

//Int("123") + Int("123")

//Int("123") + 30

//명시적 해제 강제 해제

var optInt3 : Int? = 3

print("옵셔널 자체의 값 : \(optInt3)")
print("!로 강제 해제한 값 : \(optInt3!)")

Int("123")! + Int("123")!

Int("123")! + 30

//옵셔널 값의 안전한 해제

var str = "123"
var intFromStr = Int(str)

if intFromStr != nil {
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr!)입니다.")
} else {
    print("값 변환에 실패했습니다.")
}


//옵셔널 값의 안전한 해제2 (실패)

var str1 = "Swift"
var intFromStr1 = Int(str1)

if intFromStr1 != nil {
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr1!)입니다.")
} else {
    print("값 변환에 실패했습니다.")
}


//옵셔널 바인딩 비강제 해제

var str2 = "Swift"
if let intFromStr2 = Int(str2) {
        print("값이 변환되었습니다. 변환된 값은 \(intFromStr2)입니다.")
} else {
    print("값 변환에 실패했습니다.")
}



var str3 = "Swift"

func intStr(str3:String) {
    guard let intFromStr3 = Int(str3) else{
        print("값 변환에 실패했습니다.")
        return
    }
    
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr3)입니다.")
}

var capital = ["KR" : "Seoul", "EN" : "London", "FR" : "Paris"]

print(capital["KR"])
print(capital["KR"]!)

if(capital["KR"] != nil) {
    print(capital["KR"]!)
}

if let val = capital["KR"] {
    print(val)
}


//컴파일러에 의한 옵셔널 자동 해제

let optInt4 = Int("123")

if((optInt4) == 123) {
    // 한쪽이 옵셔널, 다른 한쪽이 일반 타입이면 자동으로 옵셔널 타입 해제하여 비교 연산 수행
    print("optInt4 == 123")
} else {
    print("optInt4 != 123")
}


//옵셔널의 묵시적 해제

var str4 : String? = "Swift Optional"
print(str4)

var str5 : String! = "Swift Optional"
print(str5)

var str6 : String! = nil
//연산자 !를 붙여 정의한 변수는 nil을 대입할 수 있으므로 옵셔널 타입이다.

var value01 : Int? = 10
//value01 + 5 (연산 안됨)

var value02 : Int! = 10
value02 + 5

//묵시적 옵셔널 : 실제로 사용할 때에는 절대 nil 값이 대입될 가능성이 없는 변수일 때


