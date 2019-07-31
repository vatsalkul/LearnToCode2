let totalGems = randomNumberOfGems
var gemCounter = 0
let expert = Expert()
let character = Character()
world.place(expert, facing: .north, atColumn: 0, row: 4)
world.place(character, facing: .south, atColumn: 4, row: 6)
expert.turnLockUp()

func charMove(distance: Int) {
    for i in 1 ... distance {
        character.jump()
        if character.isOnGem{
            character.collectGem()
            gemCounter += 1
        }
    }
    
}
func checkGem() {
    if character.isOnGem{
        character.collectGem()
        gemCounter += 1
    }
    
}

while gemCounter != totalGems {
    charMove(distance: 6)
    character.turnRight()
    character.moveForward()
    character.turnRight()
    checkGem()
    character.move(distance: 6)
    checkGem()
    character.turnLeft()
    character.moveForward()
    character.turnLeft()
    charMove(distance: 6)
    character.turnLeft()
    character.turnLeft()
}
