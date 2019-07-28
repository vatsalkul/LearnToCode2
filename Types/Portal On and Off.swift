purplePortal.isActive = false
func collectAllGems() {
    while !isBlocked {
        moveForward()
        if isOnGem{
            collectGem()
        }
    }
}
func turnAround(){
    turnLeft()
    turnLeft()
}

collectAllGems()

turnAround()
purplePortal.isActive = true
while !isOnClosedSwitch {
    moveForward()
}
toggleSwitch()
turnAround()
purplePortal.isActive = false
collectAllGems()
