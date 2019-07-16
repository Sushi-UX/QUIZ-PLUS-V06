//
//  QuizManager.swift
//  Quiz Plus V5
//
//  Created by Raymond Choy on 7/16/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit
import GameKit

class QuizManager {
    
    var questionsAsked = 0
    var questionsPerRound = 4
    var correctQuestions = 0
    var indexOfSelectedQuestion = 0
    var randomNumberGenerated = [Int]()
    
    
    
    var questions: [[String:String]] = [["Question":"This was the only US President to serve more than two consecutive terms.","Answer":"Franklin D. Roosevelt"],// Roosevelt
        ["Question":"Which of the following countries has the most residents?", "Answer":"Nigeria"],//Nigeria
        ["Question":"In what year was the United Nations founded?","Answer":"1945"],//1945
        ["Question":"The Titanic departed from the United Kingdom, where was it supposed to arrive?","Answer":"New York City"],//New York City
        ["Question":"Which nation produces the most oil?","Answer":"Canada"],//Canada
        ["Question":"Which country has most recently won consecutive World Cups in Soccer?","Answer":"Brazil"],//Brazil
        ["Question":"Which of the following rivers is longest?","Answer":"Mississippi"],//Mississippi
        ["Question":"Which city is the oldest?","Answer":"Mexico City"],//Mexico City
        ["Question":"Which country was the first to allow women to vote in national elections?","Answer":"Poland"],//Poland
        ["Question":"Which of these countries won the most medals in the 2012 Summer Games?","Answer":"Great Britian"]//Great Britain
    ]
    
    var answers: [[String]] = [
        ["George Washington","Franklin D. Roosevelt","Woodrow Wilson","Andrew Jackson"],//2
        ["Nigeria","Russia","Iran"],//1
        ["1918","1919","1945","1954"],//3
        ["Paris","Washington D.C.","New York City"],//3
        ["Iran","Iraq","Brazil","Canada"],//4
        ["Italy","Brazil","Argetina"],//2
        ["Yangtze","Mississippi","Congo","Mekong"],//2
        ["Mexico City","Cape Town","San Juan"],//1
        ["Poland","United States","Sweden","Senegal"],//1
        ["France","Germany","Japan","Great Britian"]//4
    ]
    
    var allQuestions: [QuizObject] = []
    
    init() {
        for a in 0..<questions.count {
            let trivia = QuizObject(question: questions[a],answer : answers[a])
            allQuestions.append(trivia)
        }
    }
    
    func generateUnquieNumber()-> Int {
        
        var shuffleQuestions = GKRandomSource.sharedRandom().nextInt(upperBound: self.allQuestions.count)
        while randomNumberGenerated.contains(shuffleQuestions) {
            shuffleQuestions = GKRandomSource.sharedRandom().nextInt(upperBound: self.allQuestions.count)
        }
        
        randomNumberGenerated.append(shuffleQuestions)
        return shuffleQuestions
    }
    
    // MARK: Random questionselection
    func randomQuestion() -> QuizObject {
        let genneratedQuestion = allQuestions[generateUnquieNumber()]
        return genneratedQuestion
    }
    
}
