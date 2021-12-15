import Foundation

class Model {
    
    public var target = 0
    
    func newGame() {
        self.target = Int.random(in: 0...100)
    }
    
    func isCorrect(guess: Int!) -> Bool {
        return guess == self.target
    }
    
    func compare (guess: Int!) -> Int {
        var compareResult = 0
        
        if guess > self.target {
            compareResult = -1
        } else if guess < self.target {
            compareResult = 1
        } else {
            compareResult = 0
        }
        
        return compareResult
        
    }
    
}
