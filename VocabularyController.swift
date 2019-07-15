//
//  VocabularyController.swift
//  SwiftVocabulary
//
//  Created by Luqmaan Khan on 5/28/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import Foundation

class VocabularyController {
    
    var vocabWords: [VocabularyWord]
    
    init(vocabWords: [VocabularyWord]) {
        
        self.vocabWords = [VocabularyWord(word: "Function", definition: "In programming, a named section of a program that performs a specific task. In this sense, a function is a type of procedure or routine. Some programming languages make a distinction between a function, which returns a value, and a procedure, which performs some operation but does not return a value."), VocabularyWord(word: "Variable", definition: "In programming, a variable is a value that can change, depending on conditions or on information passed to the program. Typically, a program consists of instruction s that tell the computer what to do and data that the program uses when it is running."), VocabularyWord(word: "Constant", definition: "In computer programming, a constant is a value that cannot be altered by the program during normal execution, i.e., the value is constant. ... This is contrasted with a variable, which is an identifier with a value that can be changed during normal execution, i.e., the value is variable.")]
    }
}
