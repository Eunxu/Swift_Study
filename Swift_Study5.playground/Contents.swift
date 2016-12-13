/* Date : 2016.12.13
 * Create : CreateXu
 * File : Swift_Study5
 * Description : Flow_Control
 */

import UIKit

//반복문 for, while

// for in

for a in 0...9 {
    print("\(a) 번 작동")
}

var name = "CreateXu"
for c in name.characters{
    print("개별 문자는 \(c)")
}

//루프 상수의 생략 _ 사용

let size=5
let addChar="0"
var keyword="5"

for _ in 1...size{
    keyword = addChar+keyword
}
print(keyword)


//다중 루프, 구구단

for i in 1...9{
    for j in 1...9{
        print("\(i)*\(j)=\(i*j)")
    }
}


// while, repeat while

//while

var n = 2
while n < 1000{
    n = n*2
}

print("n=\(n)")


//repeat ~ while (do ~ while)

var num = 1024

repeat {
    num = num*2
}
while num < 1000

print("num = \(num)")

