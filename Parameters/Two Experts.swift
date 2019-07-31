let expert1 = Expert()
let expert2 = Expert()
world.place(expert1, facing: .north, atColumn: 3, row: 0)
world.place(expert2, facing: .north, atColumn: 0, row: 4)
func getGemInLine(expert: Expert) {
    while !expert.isBlocked{
        if expert.isOnGem{
            expert.collectGem()
        } 
        expert.moveForward()
    }
}

expert1.turnLock(up: true, numberOfTimes: 2)
expert2.turnLock(up: false, numberOfTimes: 1)
expert1.turnRight()
getGemInLine(expert: expert1)
expert1.turnLock(up: false, numberOfTimes: 2)
expert1.turnRight()
expert1.turnRight()
expert1.move(distance: 2)
expert2.turnLock(up: true, numberOfTimes: 1)
getGemInLine(expert: expert1)
expert1.collectGem()
expert2.turnRight()
getGemInLine(expert: expert2)
