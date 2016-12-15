/* Date : 2016.12.14
 * Create : CreateXu
 * File : Swift_Study6
 * Description : Flow_Control
 */

import UIKit

//if ~ else if else

var fruit = "banana"
var fruitName : String

if (fruit == "apple"){
    fruitName="apple"
}
else if(fruit == "peach"){
    fruitName="peach"
}
else{
    fruitName="banana"
}


//if문 중첩

var adult = 19
var age = 22
var gender = "M"

if adult > age{
    if gender == "M" {
        print("남자 미성년자입니다.")
    } else {
        print("여자 미성년자입니다.")
    }
} else {
    if gender == "M" {
        print("남자 성년자입니다.")
    } else {
        print("여자 성년자입니다.")
    }
}



//guard 구문 (false 일 경우 실행)

func divide(base:Int){
    
    guard base != 0 else{
        print("연산할 수 없습니다.")
        return
    }
    
    let result = 100/base
    print(result)
}


//#available 플랫폼 버전

if #available(iOS 9, *){
    // iOS 9용 API
} else {
    //API를 사용하지 못했을 때의 실패 처리
}



//Switch 문

let val = 2

switch val {
case 1, 3 :
    print("일치한 값은 1, 3입니다.")
case 2, 4 :
    print("일치한 값은 2, 4입니다.")
case 2, 4 :
    print("일치한 값은 2, 4이지만 실행이 안됩니다.")
default :
    print("일치한 값이 하나도 없습니다.")
}

//Switch 튜플 비교형

var value = (2,3)

switch value {
case let(x, 3) :
    print("튜플의 두 번째 값이 3일 때 첫 번째 값은 \(x)")
case let(2, y) :
    print("튜플의 첫 번째 값이 2일 때 두 번째 값은 \(y)")
case let(x, y) :
    print("튜플의 값은 각각 \(x), \(y) 입니다.")
    
}

//Switch 범위

var passtime = 1999

switch passtime {
case 0..<60 :
    print("작성된지 1분 안의 게시물")
case 60..<3600 :
    print("작성된지 1시간 안의 게시물")
case 3600..<86400 :
    print("작성된지 1일 안의 게시물")
default :
    print("작성된지 1일 이상의 게시물")
}

//Switch 튜플 범위

//var vaule=(2,3) 전에 선언

switch value{
case (0..<2, 3) :
    print("범위 A에 포함되었습니다.")
case (2..<5, 0..<3) :
    print("범위 B에 포함되었습니다.")
case (2..<5, 3..<5) :
    print("범위 C에 포함되었습니다.")
default :
    print("범위 D에 포함되었습니다.")
}


//Fall_Through

let sampleChar : Character = "a"

switch sampleChar {
case "a" :
    fallthrough
case "A" :
    print("글자는 A입니다.")
default :
    print("일치하는 글자가 없습니다.")
    
}


//break 문

for row in 0...5 {
    if row>2 {
        break
    }
    print("\(row)가 실행되었습니다.")
}

//continue 문

for row in 0...5 {
    if row<2 {
        continue
    }
    print("\(row)가 실행되었습니다.")
}


//구분 레이블과 break, continue

var loopFlag = true
for i in 1...5 {
    
    for j in 1...9 {
        
        if (j==3) {
            loopFlag = false
            break
        }
        
        print("\(i)*\(j)=\(i*j)")
        
    }
    
    if(loopFlag == false){
        break
    }
    
}



outer : for i in 1...5 {
    
    inner : for j in 1...9{
        
        if(j==3) {
            break outer
        }
        
        print("\(i)*\(j)=\(i*j)")
    }
}

