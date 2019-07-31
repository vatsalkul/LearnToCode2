let expert = Expert()
let character = Character()
world.place(expert, facing: .north, atColumn: 3, row: 0)
world.place(character, facing: .south, atColumn: 4, row: 6)
func collectJump() {
    for i in 1 ... 2 {
        character.collectGem()
        character.jump()
        character.jump()
    }
    
}
expert.turnLockUp()
expert.toggleSwitch()

character.collectGem()
character.move(distance: 2)
character.turnRight()
collectJump()
character.turnLeft()
collectJump()
character.collectGem()
