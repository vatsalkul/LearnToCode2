let expert = Expert()
let character = Character()


func turnLock(up: Bool, numberOfTimes: Int) {
    for i in 1 ... numberOfTimes {
        if up == true{
            expert.turnLockUp()
        } else if up == false {
            expert.turnLockDown()
        }
    }
    
}

func expertTurnAround(){
    expert.turnRight()
    expert.turnRight()
}
func getGemInLine() {
    while !character.isBlocked {
        character.moveForward()
    }
    character.collectGem()
    character.turnRight()
    character.turnRight()
}

turnLock(up: true, numberOfTimes: 3)
expertTurnAround()
turnLock(up: true, numberOfTimes: 3)
getGemInLine()
for i in 1 ... 2 {
    character.moveForward()
    character.turnLeft()
}
expertTurnAround()
turnLock(up: false, numberOfTimes: 2)
getGemInLine()
character.moveForward()
turnLock(up: false, numberOfTimes: 1)
expertTurnAround()
turnLock(up: false, numberOfTimes: 3)
getGemInLine()
