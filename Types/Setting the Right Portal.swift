func getGem() {
    while !isBlocked{
        moveForward()
        if isOnGem{
            collectGem()
        }
    }
    turnAround()
    
}
func turnAround(){
    turnLeft()
    turnLeft()
}

bluePortal.isActive = false
pinkPortal.isActive = false
getGem()
pinkPortal.isActive = true
moveForward()
turnAround()
getGem()
moveForward()
bluePortal.isActive = true
moveForward()
moveForward()
collectGem()
turnAround()
bluePortal.isActive = false
getGem()
