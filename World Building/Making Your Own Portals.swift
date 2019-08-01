let greenPortal = Portal(color: #colorLiteral(red: 0.4028071761, green: 0.7315050364, blue: 0.2071235478, alpha: 1))
world.place(greenPortal, atStartColumn: 1, startRow: 5, atEndColumn: 5, endRow: 1)
greenPortal.isActive = false
func turnAround() {
    turnRight()
    turnRight()
}
func collectGems() {
    for i in 1 ... 4 {
        if i == 4 {
            greenPortal.isActive = true
        }
        
        moveForward()
        collectGem()
        turnAround()
        moveForward()
        turnRight()
    }
    
}
moveForward()
collectGems()
greenPortal.isActive = false
collectGems()
