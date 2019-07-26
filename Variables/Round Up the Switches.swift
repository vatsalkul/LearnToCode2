var numberOfGems = 0
var switchControl = 0
while numberOfGems != switchControl || switchControl == 0{
    if !isBlocked{
        moveForward()
        if isOnGem{
            collectGem()
            numberOfGems += 1
        } else if isOnClosedSwitch {
            toggleSwitch()
            switchControl += 1
        }
    } else {
        turnRight()
        
    }
}
