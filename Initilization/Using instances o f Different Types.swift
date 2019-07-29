let expert = Expert()
let character = Character()
func getGem() {
    while !character.isBlocked{
        character.moveForward()
        if character.isOnGem{
            character.collectGem()
        }
    }
    
}
func getFirstGem() {
    character.moveForward()
    character.collectGem()
    character.moveForward()
    character.turnRight()
}

expert.moveForward()
expert.turnLockUp()
getFirstGem()
getGem()
expert.turnLockDown()
expert.turnLockDown()
getGem()
