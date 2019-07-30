let expert = Expert()
let character = Character()

var gemCounter = 0
func getGem() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    }
}

func move(distance: Int) {
    for i in 1 ... distance {
        character.moveForward()
    }
    
}

func turnLock(up: Bool, rounds: Int) {
    for i in 1 ... rounds {
        if up == true{
            expert.turnLockUp()
        } else if up == false {
            expert.turnLockDown()
        }
    }
    
}
func getGemInLine() {
    while !character.isBlocked {
        character.moveForward()
        getGem()
        
    }
    
}
func turnAllLock(up: Bool, rounds: Int) {
    for i in 1 ... 4 {
        turnLock(up: up, rounds: rounds)
        if i == 4 {
            break
        }
        
        expert.turnRight()
    }
    
}

turnAllLock(up: true, rounds: 4)

while gemCounter < 3 {
    character.moveForward()
    if !character.isBlockedRight{
        character.turnRight()
    } else if character.isBlocked {
        character.turnRight()
        
    }
    
    getGem()
    
}

character.moveForward()
turnAllLock(up: false, rounds: 3)
character.turnLeft()
character.moveForward()
getGem()
while gemCounter < 7{
    if !character.isBlockedRight{
        character.turnRight()
    } else if character.isBlocked {
        character.turnLeft()
        character.turnLeft()
    }
    move(distance: 2)
    getGem()
    
}
