
func solveSides() {
    move(distance: 2)
    turnRight()
    toggleSwitch()
    
    for i in 1 ... 2 {
        moveForward()
        toggleSwitch()
        
    }
    turnRight()
    
    move(distance: 2)
    turnLeft()
    
    
}

func setupStairs() {
    for i in 1 ... 2 {
        world.place(Stair(), facing: .south, atColumn: 2, row: 1*i)
    }
    for i in 1 ... 2 {
        world.place(Stair(), facing: .north, atColumn: 2*i, row: 7)
    }
    for i in 2 ... 3 {
        world.place(Stair(), facing: .west, atColumn: 1, row: 2*i)
    }
    for i in 2 ... 3 {
        world.place(Stair(), facing: .east, atColumn: 5, row: 2*i)
    }
    
    
}
setupStairs()
turnLeft()
moveForward()
turnRight()
move(distance: 4)
turnLeft()
for i in 1 ... 3 {
    solveSides()
}
