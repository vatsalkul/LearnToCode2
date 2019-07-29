let expert = Expert()
let character = Character()
func getGemAndToggle() {
    while !character.isBlocked {
        character.moveForward()
        if character.isOnGem{
            character.collectGem()
        } else if character.isOnClosedSwitch {
            character.toggleSwitch()
            
        }
    }
    
}
func turnFirstLock() {
    expert.turnLeft()
    while !expert.isBlocked {
        expert.moveForward()
    }
    expert.turnRight()
    expert.moveForward()
    expert.moveForward()
    expert.turnLeft()
    expert.turnLockDown()
    expert.turnLockDown()
}
func turnSecondLock() {
    for i in 1 ... 2 {
        while !expert.isBlocked{
            expert.moveForward()
        }
        expert.turnRight()
        
    }
    expert.moveForward()
    expert.moveForward()
    expert.turnLeft()
    expert.turnLockUp()
}

turnFirstLock()
getGemAndToggle()
expert.turnRight()
turnSecondLock()
getGemAndToggle()
