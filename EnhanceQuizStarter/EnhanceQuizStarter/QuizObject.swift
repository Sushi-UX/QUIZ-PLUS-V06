//
//  QuizObject.swift
//  Quiz Plus V5
//
//  Created by Raymond Choy on 7/16/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit

struct QuizObject {
    var question: [String:String] //Dictionary for Questions with answer inclued
    var answer: [String] //Collection of answers
    
    
    init(question: [String:String], answer: [String]){
        self.question = question
        self.answer = answer    
    }
}

