let block = Block()
world.place(block, atColumn: 3, row: 3)
while !isOnClosedSwitch {
    moveForward()
    if !isBlockedLeft{
        turnLeft()
        
    } else if !isBlockedRight {
        turnRight()
        
    }
}
toggleSwitch()
