//
//  GameManager.swift
//  EnhanceQuizStarter
//
//  Created by Raymond Choy on 7/17/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

protocol StatusDisplayDelegate: class {
    func setQuestionsAskedTo(_ val: Int)
    func setCorrectQuestionsTo(_ val: Int)
}

import Foundation
import UIKit

class GameManager {
    
    let questionsPerRound = 4
    
    weak var delegateUIViewController: StatusDisplayDelegate?
    
    var questionIndex = -1 {
        didSet { delegateUIViewController?.setQuestionsAskedTo(questionIndex + 1)}
    }
    
    var isLastRound: Bool {
        return questionIndex == questionsPerRound - 1
    }
    
    var correctQuestions = 0 {
        didSet { delegateUIViewController?.setCorrectQuestionsTo(correctQuestions) }
    }
    
    var currentQuestion: Question?
    
    func reset() {
        
        //Reset question index to start point;  re-shuffle the QuizManager questions
        questionIndex = -1
        correctQuestions = 0
        QuizManager.questions.shuffle()
    }
    
    func nextQuestion() -> Question {
        
        questionIndex += 1
        currentQuestion = QuizManager.questions[questionIndex]
        return currentQuestion!
    }
    
    func numberOfAnswerChoices() -> Int {
        
        //This function returns the number of answers for the current question
        return currentQuestion!.answers.count
    }
    
    func correctAnswer() -> Int {
        return currentQuestion!.correctAnswer
    }
    
    func presentResult() -> String {
        
        if correctQuestions > 0 {
            return "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        } else {
            return "You didn’t get any correct answers, Better luck next time!"
        }
    }
    
}


