/* Date : 2016.12.17
 * Create : CreateXu
 * File : Swift_Study8
 * Description : Group_Data_Type
 */

import UIKit

// 튜플

let tupleValue = ("a", "b", 1, 2.5, true)

tupleValue.0
tupleValue.1
tupleValue.2
tupleValue.3
tupleValue.4

//타입 어노테이션 설정

var tpl1 : (Int, Int) = (100, 200)
var tpl2 : (Int, String, Int) = (100, "a", 200)
var tpl3 : (Int, (String, String)) = (100, ("t", "v"))
var tpl4 : (String) = ("Sanmple stiring") //String 로 처리


// 바인딩 방식의 구문 제공

let tv : (String, Character, Int, Float, Bool) = ("a", "b", 1, 2.5, true)
let (a,b,c,d,e) = tv

print(a)
print(b)
print(c*2)
print(d*2)
print(e)


//결과값으로 튜플을 반환하는 함수

func getTupleValue() -> (String, String, Int) {
    return ("t", "v", 100)
}

let(A,B,C) = getTupleValue()

A
B
C

let (D,E,_) = getTupleValue()

D
E




//딕셔너리

var capital = ["KR":"Seoul", "EN":"London", "FR":"Paris"]

capital["KR"]
capital["EN"]
capital["FR"]


//딕셔너리 선언과 초기화

//방법1
var one = Dictionary<String, String>()
//방법2
var two = [String : String]()

//방법3 : 타입 어노테이션 활용하여 선언과 초기화 분리하기
var three : Dictionary<String, String>
three = Dictionary()

var four : [String : String]
four = [String : String]()





var final : [String : String]

//초기화 방법들

final = Dictionary<String, String>() //one
final = Dictionary() //three
final = [String : String]() //two
final = [:]

//위의 방법 중 2,4번째를 주의깊게 보자. 사전에 타입 어노테이션을 통하여 딕셔너리의 타입이 명시적으로 선언 되어있어 초기화 구문에 딕셔너리 타입 지정이 생략 되어 있다. 이외의 초기화 구문에서는 함부로 타입을 생략하면 안된다.




//딕셔너리에 동적으로 아이템 추가하기

var newDic = [String : String]()
newDic["JP"] = "Tokyo"



//딕셔너리에 데이터가 존재하는지 확인하기

if newDic.isEmpty {
    print("딕셔너리에 데이터가 존재하지 않습니다.")
} else {
    print("딕셔너리에 \(newDic.count)개의 데이터가 존재합니다.")
}


//updataValue를 사용하여 동적으로 값 할당하기

newDic.updateValue("Seoul", forKey: "KR")
//데이터가 추가되고 nil을 리턴함
newDic.updateValue("London", forKey: "EN")
//데이터가 추가되고 nil을 리턴함
newDic.updateValue("Sapporo", forKey: "JP")
//데이터가 수정되고 Tokyo를 리턴함, 기존에 Tokyo가 존재

// 딕셔너리 데이터 삭제

newDic.updateValue("Ottawa", forKey: "CA")
newDic.updateValue("Beijing", forKey: "CN")
newDic

newDic["CN"]=nil
newDic

newDic.removeValue(forKey: "CA")
newDic


if let removedValue = newDic.removeValue(forKey: "KR") {
    print("삭제된 값은 \(removedValue)입니다.")
} else {
    print("아무 것도 삭제되지 않았습니다.")
}




//딕셔너리의 순회 탐색

for (key, value) in newDic {
    print("현재 데이터는 \(key) : \(value)입니다.")
}


/*
 1. 배열 : 순서있는 데이터들을 저장할 때 사용하며 중복된 값을 저장할 수 있다.
 저장된 데이터는 인덱스로 관리된다.
 
 2. 집합 : 순서없는 데이터를 저장할 때 사용하며, 중복된 값은 한 번만 저장된다.
 
 3. 딕셔너리 : 순서없는 데이터를 키-값 형태로 저장할 때 사용하며, 중복된 값을 저장할 수 있지만 중복된 키를 사용할 수는 없다.
 
 4. 튜플 : 데이터를 나열해서 소괄호로 묶어 사용하며, 내부적으로 순서가 있지만, 순회 처리를 지원하지는 않는다. 서로 다른 타입의 데이터를 저장할 수 있다.
 
 */


