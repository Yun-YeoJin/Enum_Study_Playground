import UIKit
import Foundation

//string을 더 확장한 형태
//class -> 자료형 (상속이 안된다..?)
//class -> UIKit
class Monster {
    var clothes = "Orange + Christmas"
    var speed = 5
    var power = 20
    var experience: Double = 500

    func attack() {
    print("공격!!!")
}
}

var easyMonster = Monster() // 위와 같이 초기화 된 것.(instance)

easyMonster.clothes
easyMonster.power
easyMonster.attack()
easyMonster.attack()

// 위 Monster class를 상속받아서 쓴다.
class BossMonster: Monster {
    var levelLimit = 500
    
    func bossAttack() {
        print("$$스페셜공격$$")
    }
    override func attack() {// 부모 class의 attack을 가져와서 바꿔쓴다.
        super.attack()
        print("!!오버라이드 공격!!")
    }
}

var finalBoss = BossMonster()
finalBoss.bossAttack()
finalBoss.levelLimit
finalBoss.speed
finalBoss.power
finalBoss.attack()

// 구조체는 값 타임, 클래스는 참조 타입

var nickname = "고래밥"
var subnickname = nickname

subnickname = "칙촉"

print(nickname)
print(subnickname)

var miniMonster = Monster()
var bossMonster = miniMonster

bossMonster.power = 5000

print(miniMonster.power)
print(bossMonster.power)

class 블루투스키보드모음 {
    var apple = "keyboard"
    var logitec = "noline keyboard"
    var microsoft = "no1 keyboard"
}
var moon = 블루투스키보드모음()

print(moon.apple)

class nolineKeyboard: 블루투스키보드모음 {
    var samsung = "not good keyboard"
    
}
var moon2 = nolineKeyboard()

print(moon2.microsoft)
