//
//  QuizManager.swift
//  Quiz Plus V7
//
//  Created by Raymond Choy on 7/16/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit
import GameKit

struct QuizManager {
    
    var questionsAsked = 0
    var questionsPerRound = 4
    var correctQuestions = 0
    var indexOfSelectedQuestion = 0
    var randomNumberGenerated = [Int]()
    
    
    
    static var questions: [Question] = [
        Question(question: "This was the only US President to serve more than two consecutive terms.", answers:
            ["George Washington",
             "Franklin D. Roosevelt",
             "Woodrow Wilson",
             "Andrew Jackson"
            ], correctAnswer: 1),
            // Roosevelt
        
        Question(question: "Which of the following countries has the most residents?", answers:
            ["Nigeria",
             "Russia",
             "Iran"
            ], correctAnswer: 0),
            //Nigeria
        
        Question(question: "In what year was the United Nations founded?", answers:
            ["1918",
             "1919",
             "1945",
             "1954"
            ], correctAnswer: 2),
            //1945
        
        Question(question: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", answers:
            ["Paris",
             "Washington D.C.",
             "New York City"
            ], correctAnswer: 2),
            //New York City
        
        
        Question(question: "Which nation produces the most oil?", answers:
            ["Iran",
             "Iraq",
             "Brazil",
             "Canada"
            ], correctAnswer: 3),
            //Canada
 
        
        Question(question: "Which country has most recently won consecutive World Cups in Soccer?", answers:
            ["Italy",
             "Brazil",
             "Argetina"
            ], correctAnswer: 1),
            //Brazil

        
        Question(question: "Which of the following rivers is longest?", answers:
            ["Yangtze",
             "Mississippi",
             "Congo",
             "Mekong"
            ], correctAnswer: 1),
            //Mississippi
        
        
        Question(question: "Which city is the oldest?", answers:
            ["Mexico City",
             "Cape Town",
             "San Juan"
            ], correctAnswer: 0),
            //Mexico City
        
        
        Question(question: "Which country was the first to allow women to vote in national elections?", answers:
            ["Poland",
             "United States",
             "Sweden",
             "Senegal"
            ], correctAnswer: 0),
            //Poland
        
        
        Question(question: "Which of these countries won the most medals in the 2012 Summer Games?", answers:
            ["France",
             "Germany",
             "Japan",
             "Great Britian"
            ], correctAnswer: 3),
            //Great Britain
    ]
    
    //----------- OLD CODE FROM PREVIOUS VERSION
        /*
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
        */
}

