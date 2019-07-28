func getGemOrToggleSwitches() {
    for i in 1 ... 4 {
        moveForward()
        if isOnGem{
            collectGem()
        } else if isOnClosedSwitch {
            toggleSwitch()
        } 
        turnAround()
        if i==4 {
            orangePortal.isActive=true
            greenPortal.isActive=true
        }
        moveForward()
        turnRight()
    }
}
func getGemOrToggleInLine() {
    while !isBlocked{
        moveForward()
        if isOnGem{
            collectGem()
            
        } else if isOnClosedSwitch {
            toggleSwitch()
        } 
    }
    turnAround()
    moveForward()
}

func  turnAround() {
    turnLeft()
    turnLeft()
}
turnRight()
moveForward()
moveForward()
orangePortal.isActive = false
getGemOrToggleSwitches()
orangePortal.isActive = false
getGemOrToggleInLine()
turnLeft()
getGemOrToggleInLine()
turnLeft()
greenPortal.isActive = false
getGemOrToggleInLine()
turnRight()
greenPortal.isActive = true
getGemOrToggleInLine()
greenPortal.isActive = false
getGemOrToggleSwitches()
