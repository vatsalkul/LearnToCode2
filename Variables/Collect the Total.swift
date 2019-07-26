let totalGems = randomNumberOfGems
var numberOfGems = 0
while numberOfGems != totalGems {
    if !isBlocked{
        moveForward()
        if isOnGem{
            collectGem()
            numberOfGems += 1
        }
    } else if isBlockedLeft && isBlocked {
        turnRight()
        
    } else if isBlocked && isBlockedRight {
        turnLeft()
        
    }
}
