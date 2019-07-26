var gemCounter = 0
while gemCounter < 7 {
    while !isBlocked {
        if isOnGem {
            collectGem()
            gemCounter = gemCounter+1
        }
        moveForward()
        
    }
    turnLeft()
    turnLeft()  
}
