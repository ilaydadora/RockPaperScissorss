import UIKit
enum Choice: String {
    case rock = "rock🪨"
    case paper = "paper📄"
    case scissors = "scissors✂️"
    static func randomComputerChoice() -> Choice {
        let choices: [Choice] = [.rock, .paper, .scissors]
        let index = Int(arc4random_uniform(UInt32(choices.count)))
        let choice = choices[index]
        return choice
    }
}
func playGame(you:Choice,computer:Choice) -> String {
    if you == computer { return "you: \(you), computer: \(computer) -> TIE" }
    else if you == .rock && computer == .scissors { return "you : \(you),computer: \(computer) -> YOU WIN ✅ "}
    else if you == .paper && computer == .rock { return "you : \(you),computer: \(computer) -> YOU WIN ✅ " }
    else if you == .scissors && computer == .paper { return "you : \(you),computer: \(computer) -> YOU WIN ✅ " }
    else { return "you : \(you),computer: \(computer) -> COMPUTER WINS❌ "  }
}
var result1 = playGame(you: .paper, computer: .randomComputerChoice())
print(result1)
var result2 = playGame(you: .rock, computer: .randomComputerChoice())
print(result2)
var result3 = playGame(you: .scissors, computer: .randomComputerChoice())
print(result3)
