//h파일이 없다 !

//: Playground - noun: a place where people can play

/* Date : 2016.12.03
 * Create : CreateXu
 * File : Swift_Study1
 * Description : Basic
 */

import UIKit

//변수 선언
var str = "A"
var STR = "스위프트는 대소문자를 구분합니다."

var firstInt = 1; //세미콜론은 선택사항 !
var secondInt = 2


//main 함수가 없다!

class Basic {
    func add(first : Int, second : Int) -> Int {
        return first+second;
    }
}

var b = Basic()
print(b.add(firstInt, second: secondInt))


//var char = 'A';
//var CHAR = '문자열뿐만 아니라 문자도 큰따옴표를 사용합니다.'

