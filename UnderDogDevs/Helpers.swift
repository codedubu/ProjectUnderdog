//
//  Helpers.swift
//  UnderDogDevs
//
//  Created by River McCaine on 5/14/22.
//

import Foundation
import UIKit

extension WordPlaySolutions {
    
    func retrieveFilesandRunProblems() {
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
        containsUU()
        containsXYandZ()
        containsQnotU()
        containsCAT5()
        doesNotContainEA5()
        containsBX5()
        startXendY()
        noVowelsorY()
        containsAllVowels()
        containsAllVowelsAlphabetized()
        containsTYPE()
        endsWithIGHTLY()
        shortestContainsAllVowels()
        longestContainsNoVowels()
        findLeastCommonQXZ()
        longestPalindrome()
        neverOccuringEnglishConsecutives()
    }
    
    
} // END OF EXTENSION
