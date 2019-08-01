for i in 1 ... 3 {
    if i == 1 || i == 3 {
            world.place(Block(), atColumn: 2*i, row: 2)
    }
    world.place(Block(), atColumn: 2*i, row: 2)
}
func getGem() {
    for i in 1 ... 2 {
        turnRight()
        move(distance: 4)
        if isOnGem{
            collectGem()
        }
        turnRight()
    }
    
}
for i in 1 ... 3 {
    move(distance: 2)
    toggleSwitch()
    getGem()
    
}
