let expert = Expert()
var gemCounter = 0
world.place(expert, facing: .south, atColumn: 1, row: 8)
func getGemInLine() {
    while !expert.isBlocked {
        if expert.isOnGem{
            expert.collectGem()
            gemCounter += 1
        }
        expert.moveForward()
    }
    
}

getGemInLine()
expert.turnLockDown()
expert.turnLeft()
getGemInLine()
expert.turnLockUp()
expert.turnRight()
getGemInLine()
