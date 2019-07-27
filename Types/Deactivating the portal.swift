greenPortal.isActive = false
func goOnPortal() {
    moveForward()
    moveForward()
    moveForward()
    
}

func oneRound() {
    while !isOnClosedSwitch {
        moveForward()
    }
    toggleSwitch()
    turnLeft()
    turnLeft()
    moveForward()
    moveForward()
    moveForward()
}

goOnPortal()
oneRound()
turnRight()
for i in 1 ... 2 {
    oneRound()
}
