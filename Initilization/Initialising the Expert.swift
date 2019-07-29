let expert = Expert()

func turnAround() {
    expert.turnLeft()
    expert.turnLeft()
}
func moveThreeSteps() {
    expert.moveForward()
    expert.moveForward()
    expert.moveForward()
}

func getGems() {
    while !expert.isBlocked {
        expert.moveForward()
        if expert.isOnGem{
            expert.collectGem()
        }
    }
    turnAround()
    moveThreeSteps()
    
}

moveThreeSteps()
expert.turnLockUp()
turnAround()
getGems()
expert.turnRight()
getGems()
getGems()
