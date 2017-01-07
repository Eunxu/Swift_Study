/* Date : 2016.01.07
 * Create : CreateXu
 * File : Swift_Study11
 * Description : Function_Parameter
 */

import UIKit

// 1. 내부 매개변수 외부 매개변수

//외부 매개변수를 이용한 함수
func printHello(to name : String, welcomeMessage msg: String) {
    print("\(name)님, \(msg)")
}

printHello(to:"CreateXu", welcomeMessage:"안녕하세요")

//외부 매개변수와 내부 매개변수 혼합한 함수
func printHello2(to name:String, msg:String) {
    print("\(name)님, \(msg)")
}

printHello2(to:"EunXu", msg:"반갑습니다")

//언더바를 사용하여 외부 매개변수명 생략 가능
func printHello3(_ name:String, _ msg:String) {
    print("\(name)님, \(msg)")
}

printHello3("Xu","하이루")


// 2. 가변 인자

func avg(score : Int...) -> Double {
    var total = 0
    for r in score {
            total += r
        
    }
    
    return (Double(total)/Double(score.count))
}

print(avg(score: 10, 20, 30, 40))



// 3. 기본값을 갖는 매개변수

func echo(message:String, newline:Bool=true) {
    if newline == true {
        print(message, true)
    } else {
        print(message, false)
    }
}

echo(message: "파라미터 한개 넣었습니다")
echo(message: "두개의 파라미터", newline: false)


// 4. 매개변수의 수정

func descAge(name:String, _ paramAge : Int) -> String {
    var name = name
    var paramAge = paramAge
    
    name = name + "씨"
    paramAge += 1
    return "\(name)의 내년 나이는 \(paramAge)세 입니다."
}

descAge(name: "Xu", 23)


// 5. inOut 매개변수

func foo(paramCount : inout Int) -> Int {
    paramCount += 1
    return paramCount
}

var count = 30
print(foo(paramCount: &count))
print(count) //변경되었음 주소가 전달 됨.



// 6. 변수의 생존 범위(Scope)와 생명주기

var counts = 30
func foo(counts:Int) -> Int {
    var counts = counts
    counts += 1
    return counts
}

print(foo(counts:counts)) //함수 내부의 counts 값
print(counts) //외부에서 정의한 count 값

/*
do {
    do{
        var ccnt = 3
        ccnt += 1
        print(ccnt)
    }
    ccnt += 1
    print(ccnt)
}

*/