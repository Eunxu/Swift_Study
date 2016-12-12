/* Date : 2016.12.11
 * Create : CreateXu
 * File : Swift_Study4
 * Description : Basic
 */

import UIKit

// 산술 연산자

let one = 1
let two = 2

// 단항 연산자
-one
-two

// 이항 연산자

one + two
one - two
one * two
one / two
one % two



// 비교 연산자

one > two
one < two
one == two
one != two

// 논리 연산자 !(NOT), &&(AND), ||(OR)

true && true
false && false
true && false
false && true

true || true
false || false
true || false
false || true

let a = 10
let b = 5
let c = 2

a>b && b>c //t && t = t
a==b && a>b //f && t = f
a==b || a>b //f || t = t

a-b>b-c && b==0 //t && f = f
a+b>c||c>0 //t || t = t


// 범위 연산자 (for문에 사용될 것)
// 닫힌 범위 연산자

1...5

// 반 닫힌 범위 연산자

1..<6



// 대입 연산자 (블로그 표 참고)


// 증감 연산자 (현재는 지원하지 않음)

