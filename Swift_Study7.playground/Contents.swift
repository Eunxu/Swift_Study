/* Date : 2016.12.15
 * Create : CreateXu
 * File : Swift_Study7
 * Description : Group_Data_Type
 */

import UIKit

//배열추가 동적방식

var cities = ["Seoul", "Tokyo", "LA", "New York"]

cities[0]
cities[1]
cities[2]
cities[3]

cities

//배열 순회 탐색

//var cities = ["Seoul", "Tokyo", "LA", "New York"]
cities.count

let length = cities.count

for i in 0..<length{
    print("\(i)번째 배열 원소는 \(cities[i])입니다")
}

/*
 
 for i in 0..<cities.count{
 print("\(i)번째 배열 원소는 \(cities[i])입니다")
 }
 
 작동은 되지만, 배열의 크기가 클 경우 매번 다시 계산하므로
 변수에 담아서 사용하는 것이 실행 속도를 높힐수있다.
 */

for row in cities{
    print("배열 원소는 \(row)")
}

for row in cities{
    let index = cities.index(of:row)
    print("\(index!)번째 배열 원소는 \(row)입니다.")
}


// 배열의 선언과 초기화 방법들

var one : [String] // 선언
one = [String]() // 초기화

var two : [String] // 선언
two = [] // 초기화

var three : [Int] = [] // 타입 어노테이션 + 초기화

var four : Array<Float> = [Float]() // 타입 어노테이션 + 초기화

var five : [String] = Array() // 타입 어노테이션 + 구방식의 초기화



// 배열이 값이 존재하는지 체크

var arrayCheck = [String]()

if arrayCheck.isEmpty {
    print("배열이 비어있습니다")
} else {
    print("배열에는 \(arrayCheck.count)개의 아이템이 저장되어 있습니다.")
}


//배열 아이템 동적 추가

/*
1. append(dataName) : 입력된 값을 배열의 맨 뒤에 추가
2. insert(dataName, atIndex: ?) : 입력된 값을 ?(정수) 자리에 삽입
3. append(contentsOf: [dataName1, dataName2, dataName3]
 : 배열의 맨 뒤에 추가 하지만, 여러 개의 아이템을 배열에 한꺼번에 추가할 때 사용한다.
 */


var appendTest = [String]()

appendTest.append("Seoul)")
appendTest.append("Tokyo")
appendTest.insert("LA", at: 1)
appendTest.append(contentsOf: ["Dubai", "Sydney"])

var test = [String](repeating:"None", count:3)



//범위 연산자를 이용한 인덱스 참조

var alphabet = ["a", "b", "c", "d", "e"]

alphabet[0...2]
alphabet[2...3]
alphabet[1..<5]


//var alphabet = ["a", "b", "c", "d", "e"]

alphabet[1...2] = ["1", "2", "3"]
alphabet[0...5]

alphabet = ["a", "b", "c", "d", "e"]
alphabet[2...4] = ["A"]
alphabet[0...2]

//c,d,e 가 A로 교체 [0...3]은 out of range



//집합 Set

//빈 집합 정의

var genres = Set<String>()

//집합에 데이터 추가
genres.insert("Classic")
genres.insert("Rock")
genres.insert("Balad")


//집합에 데이터가 존재하는지 체크

if genres.isEmpty {
    print("집합이 비어있습니다.")
} else {
    print("집합에는 현지 \(genres.count)개의 데이터가 저장되어 있습니다.")
}



//집합 순회 탐색

// var genres : Set = ["Classic", "Rock", "Balad"]

for g in genres {
    print("\(g)")
}

for g in genres.sorted() { //sorted() 함수를 사용하여 정렬된 결과를 받을 수 있다.
    print("\(g)")
}



//집합의 동적 추가와 삭제

//추가

genres = ["Classic", "Rock", "Balad"]

genres.insert("Jazz")
genres.insert("Rock") //중복 데이터는 추가되지 않음.
genres.insert("Balad") //중복 데이터는 추가되지 않음.


//삭제

print(genres)

if let removedItem = genres.remove("Rock") {
    print("데이터 \(removedItem)의 삭제가 완료되었습니다.")
    print(genres)
} else {
    print("삭제할 값이 집합에 추가되어 있지 않습니다.")
}

//전체 삭제

genres.removeAll()

if genres.isEmpty {
    print("모든 데이터가 삭제되었습니다.")
    print(genres)
} else {
    print("아직 \(genres.count)개의 데이터가 남아있습니다.")
}

// 집합 데이터 존재 여부 판단

genres = ["Classic", "Rock", "Balad"]

if genres.contains("Rock") {
    print("Rock 데이터가 저장되어 있습니다.")
} else {
    print("Rock 데이터가 저장되어 있지않습니다.")
}





//집합 연산

//기본 집합 연산

var oddDigits : Set = [1, 3, 5, 7, 9] //홀수 집합
let evenDigits : Set = [0, 2, 4, 6, 8] //짝수 집합
let primeDigits : Set = [2, 3, 5, 7] //소수 집합

oddDigits.intersection(evenDigits).sorted()

oddDigits.symmetricDifference(primeDigits).sorted()

oddDigits.union(evenDigits).sorted()

oddDigits.subtract(primeDigits)
oddDigits.sorted()


//부분집합과 포함관계 판단 연산

let A : Set = [1, 3, 5, 7, 9]
let B : Set = [3, 5]
let C : Set = [3, 5]
let D : Set = [2, 4, 6]

B.isSubset(of: A)
A.isSuperset(of: B)
C.isStrictSubset(of: A)
C.isStrictSubset(of: B)
A.isDisjoint(with: D)

// 집합의 특성을 활용한 중복 데이터 삭제

var Arry = [4, 2, 5, 1, 7, 4, 9, 1, 1, 1, 1]

let S = Set(Arry)
Arry = Array(S).sorted()

//Arry = Array(Set(S)) 으로 간단하게 사용가능


