let character = Character()
let greenPortal = Portal(color:  colorLiteral(red: 0.46666666865348816, green: 0.7647058963775635, blue: 0.2666666805744171, alpha: 1.0))
let bluePortal = Portal(color:  colorLiteral(red: 0.1764705926179886, green: 0.49803921580314636, blue: 0.7568627595901489, alpha: 1.0))
world.place(character, facing: .south, atColumn: 1, row: 2)
world.place(greenPortal, atStartColumn: 3, startRow: 2, atEndColumn: 5, endRow: 3)
world.place(bluePortal, atStartColumn: 5, startRow: 5, atEndColumn: 2, endRow: 7)
func turnAround() {
    character.turnRight()
    character.turnRight()
}

func solveSide() {
    for i in 1 ... 3 {
        character.jump()
        if character.isOnGem{
            character.collectGem()
        } else if character.isOnClosedSwitch {
            character.toggleSwitch()
        }
        if i == 3 {
            character.turnRight()
            break
        }
        
        character.turnLeft()
        
    }
    
}

for i in 1 ... 3 {
    if i == 3{
        character.turnLeft()
        solveSide()
    } else {
        solveSide()
        character.jump()
    }
    
}
