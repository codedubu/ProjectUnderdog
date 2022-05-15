//
//  ViewController.swift
//  UnderDogDevs
//
//  Created by River McCaine on 5/13/22.
//

import UIKit

class WordPlaySolutions: UIViewController {
    
    var wordList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        retrieveFiles()
        runProblems()
    }
    
    func retrieveFiles() {
        if let wordListURL          = Bundle.main.url(forResource: "sowpods", withExtension: ".txt") {
            if let startingWords    = try? String(contentsOf: wordListURL) {
                wordList            = startingWords.components(separatedBy: "\n")
            }
        }
    }
    
    func runProblems() {
        //        containsUU()
        //        containsXYandZ()
        //        containsQnotU()
        //        containsCAT5()
        //        doesNotContainEA5()
        //        containsBX5()
        //        startXendY()
        //        noVowelsorY()
        //        containsAllVowels()
        //        containsAllVowelsAlphabetized()
        //        containsTYPE()
        //        endsWithIGHTLY()
        //        shortestContainsAllVowels()
        //        longestContainsNoVowels()
        findLeastCommonQXZ()
        //        longestPalindrome()
        //        neverOccuringEnglishConsecutives()
    }
    
    
    func containsUU() {
        var wordContainer: [String] = []
        
        
        for word in wordList {
            if word.contains("UU") { wordContainer.append(word) }
        }
        
        print("1: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func containsXYandZ() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("X") && word.contains("Y") && word.contains("Z") {
                wordContainer.append(word)
            }
        }
        print("2: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func containsQnotU() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("Q") && !word.contains("U") {
                wordContainer.append(word)
            }
        }
        print("3: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func containsCAT5() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("CAT") && word.count == 5 {
                wordContainer.append(word)
            }
        }
        print("4: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func doesNotContainEA5() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if !word.contains("E") && !word.contains("A") && word.count == 15 {
                wordContainer.append(word)
            }
        }
        
        print("5: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func containsBX5() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("B") && word.contains("X") && word.count <= 5 {
                wordContainer.append(word)
            }
        }
        
        print("6: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    func startXendY() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.first == "Y" && word.last == "Y" {
                wordContainer.append(word)
            }
        }
        
        print("7: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func noVowelsorY() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if !word.contains("A") && !word.contains("E") && !word.contains("I") && !word.contains("O") && !word.contains("U") && !word.contains("Y") {
                wordContainer.append(word)
            }
        }
        
        print("8: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func containsAllVowels() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("A") && word.contains("E") && word.contains("I") && word.contains("O") && word.contains("U") {
                wordContainer.append(word)
            }
        }
        
        print("9: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func containsAllVowelsAlphabetized() {
        var wordContainer: [String] = []
        
        
        for word in wordList {
            if hasVowelsInOrder(word: word) {
                wordContainer.append(word)
            }
        }
        
        print("10: \(wordContainer) -> \(wordContainer.count)")
    }
    
    
    func hasVowelsInOrder(word: String) -> Bool {
        var vowelsToFind: [Character]   = ["A","E","I","O","U"]
        var foundVowels: [Character]    = []
        
        for letter in word {
            
            if !vowelsToFind.isEmpty && vowelsToFind[0] == letter {
                let droppedVowel = vowelsToFind.removeFirst()
                
                foundVowels.append(droppedVowel)
            }
            
            else if !foundVowels.isEmpty && foundVowels.last == letter { continue }
            else if vowelsToFind.contains(letter) || foundVowels.contains(letter) { return false }
        }
        
        if !vowelsToFind.isEmpty { return false }
        
        return true
    }
    
    
    func containsTYPE() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("TYPE") {
                wordContainer.append(word)
            }
            
        }
        
        print("11: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func endsWithIGHTLY() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.hasSuffix("IGHTLY") {
                wordContainer.append(word)
            }
        }
        
        print("12: \(wordContainer) -> \(wordContainer.count) words found\n")
    }
    
    
    func shortestContainsAllVowels() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if word.contains("A") && word.contains("E") && word.contains("I") && word.contains("O") && word.contains("U") {
                wordContainer.append(word)
            }
        }
        
        // check if there are equal values.
        // all the words that might have that length
        
        if let shortestWord = wordContainer.min(by: {$1.count > $0.count}) {
            print("13: The shortest word with all vowels in it is: \(shortestWord)\n")
        }
    }
    
    
    func longestContainsNoVowels() {
        var wordContainer: [String] = []
        
        for word in wordList {
            if !word.contains("A") && !word.contains("E") && !word.contains("I") && !word.contains("O") && !word.contains("U") {
                wordContainer.append(word)
            }
        }
        
        // check if there are equal values.
        // all the words that might have that length
        
        if let longestWord = wordContainer.max(by: {$0.count < $1.count}) {
            print("14: The longest word with no vowels in it is: \(longestWord)\n")
        }
    }
    
    
    func findLeastCommonQXZ() {
        
        var qCount = 0
        var xCount = 0
        var zCount = 0
        
        for word in wordList {
            for _ in word {
                if word.contains("Q") {
                    qCount += 1
                }
                
                if word.contains("X") {
                    
                    xCount += 1
                }
                
                if word.contains("Z") {
                    
                    zCount += 1
                }
            }
        }
        let lowestNumber = min(qCount, xCount, zCount)
        
        print([qCount,xCount,zCount])
        
        if lowestNumber == qCount {
            print("Q is the least common with \(qCount) hits.")
        } else if lowestNumber == xCount {
            print("X is the least common with \(qCount) hits.")
        } else {
            print("Z is the least common with \(qCount) hits.")
        }
        
    }
                            
    
        func longestPalindrome() {
            var wordContainer: [String] = []
            
            for word in wordList {
                
                let reversedWord = String(word.reversed())
                
                if word == reversedWord {
                    wordContainer.append(reversedWord)
                }
            }
            
            
            if let longestPalindrome = wordContainer.max(by: {$0.count < $1.count})  {
                print("16: The longest palindrome is: \(longestPalindrome)")
                
            }
        }
                            
                            
                            func neverOccuringEnglishConsecutives() {
            var wordContainer: [String] = []
            
            for word in wordList {
                
                var previousLetter              = word.first
                var hasConsecutiveLetters: Bool = false
                
                for letter in word.dropFirst() {
                    if letter == previousLetter { hasConsecutiveLetters = true }
                    previousLetter = letter
                }
                
                if hasConsecutiveLetters == false { wordContainer.append(word) }
            }
            
            print("\(wordContainer)")
        }
        
        
    } // END OF CLASS
    
