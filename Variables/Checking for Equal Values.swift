let switchCounter = numberOfSwitches
var numberOfGems = 0
while numberOfGems != switchCounter{
    if !isBlocked{
        if isOnGem{
            collectGem()
            numberOfGems=numberOfGems+1
        }
        moveForward()
    } else {
        turnRight()
        
    }
}
