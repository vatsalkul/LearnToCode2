let expert = Expert()
world.place(expert, atColumn: 2, row: 6)
var gemCounter = 0
func getGem(){
    
        expert.collectGem()
        gemCounter += 1
    
}
while gemCounter < 3 {
    if expert.isBlocked {
        getGem()
        break
        
    } else if !expert.isBlockedRight {
        expert.turnRight()
        expert.moveForward()
        getGem()
        expert.turnRight()
        expert.turnRight()
        expert.moveForward()
        expert.turnLock(up: true, numberOfTimes: 1)
        expert.turnRight()
        
    } 
    expert.moveForward()
    
}
