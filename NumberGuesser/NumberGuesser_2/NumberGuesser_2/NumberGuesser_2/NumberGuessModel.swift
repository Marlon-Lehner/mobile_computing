import Foundation

class NumberGuessModel {
    
    var target = 0
    var guessCount = 0
    var guessList = [Int]()
    
    func compare(to: Int) -> Int {
        return to - target
    }
    
    func isValid(string: String?) -> Bool {
        var isValid = false
        if let str = string, let guess = Int(str) {
            if guess >= 1 && guess <= 99 {
                isValid = true
            }
        }
        return isValid
    }
    
    func addGuess(guess: Int) -> Void {
        guessList.append(guess)
    }
}
