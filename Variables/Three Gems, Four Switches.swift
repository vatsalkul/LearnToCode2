var numberOfGem = 0
var numberOfSwitches = 0
while numberOfSwitches < 4 || numberOfGem < 3 {
    if !isBlocked {
        moveForward()
        if isOnGem && numberOfGem < 3{
            collectGem()
            numberOfGem=numberOfGem+1
        }else if isOnClosedSwitch{
            toggleSwitch()
            numberOfSwitches=numberOfSwitches+1
        }
        
    } else if isBlockedRight {
        turnLeft()
        
    } else {
        turnRight()
        
    }
    
    
}
