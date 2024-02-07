import Foundation

// simple decision making game

let words = ["Black", "Blue", "Orange", "Green", "Red"]

func selectRandomWord() -> String {
    return words.randomElement() ?? ""
}


func playGame(maxLives: Int = 5) {
    let wordToGuess = selectRandomWord()
    var guessedWord = String(repeating: "_ ", count: wordToGuess.count)
    var lives = maxLives
    var guessedLetters = ""
    
    print("Welcome to the game")
    print("The word to guess has \(wordToGuess.count) letters.")
    
    while lives > 0 {
        print("Word: \(guessedWord)")
        print("Guessed letters: \(guessedLetters)")
        print("Lives: \(lives)")
        
        print("Guess a letter: ", terminator: "")
        if let guess = readLine()?.lowercased(), let letter = guess.first {
            do {
                try makeGuess(letter, in: wordToGuess, &guessedWord, &guessedLetters)
                
                
                if !guessedWord.contains("_") {
                    print("Congratulations! You guessed the word: \(wordToGuess)")
                    return
                }
            } catch GuessError.invalidInput {
                print("Invalid input. Please enter a single letter.")
            } catch GuessError.repeatedGuess {
                print("You've already guessed that letter.")
            } catch GuessError.incorrectGuess {
                print("Incorrect guess")
                lives -= 1
            } catch {
                print("An unexpected error occurred.")
            }
        } else {
            print("Invalid input. Please enter a single letter.")
        }
    }
    
    print("Sorry, you ran out of lives. The word was: \(wordToGuess)")
}


func makeGuess(_ guess: Character, in word: String, _ guessedWord: inout String, _ guessedLetters: inout String) throws {
    guard word.contains(guess) else {
        throw GuessError.incorrectGuess
    }
    
    guard !guessedLetters.contains(guess) else {
        throw GuessError.repeatedGuess
    }
    
    guessedLetters.append(guess)
    
    for (index, char) in word.enumerated() {
        if char == guess {
            let charIndex = guessedWord.index(guessedWord.startIndex, offsetBy: index * 2)
            guessedWord.replaceSubrange(charIndex...guessedWord.index(after: charIndex), with: "\(char) ")
        }
    }
}


enum GuessError: Error {
    case invalidInput
    case repeatedGuess
    case incorrectGuess
}


playGame(maxLives: 7)

