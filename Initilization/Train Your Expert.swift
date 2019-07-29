let expert = Expert()
func getGemInLine() {
    while !expert.isBlocked {
        expert.moveForward()
        if expert.isOnGem{
            expert.collectGem()
        }
    }
    
}
func goToInitialPosition() {
    expert.turnLeft()
    expert.turnLeft()
    expert.moveForward()
    expert.moveForward()
}

getGemInLine()
goToInitialPosition()
getGemInLine()
expert.turnLockDown()
goToInitialPosition()
expert.turnLeft()
getGemInLine()
goToInitialPosition()
getGemInLine()
goToInitialPosition()
expert.turnRight()
getGemInLine()
goToInitialPosition()
getGemInLine()
