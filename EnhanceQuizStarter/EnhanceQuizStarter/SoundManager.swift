//
//  SoundManager.swift
//  Quiz Plus V5
//
//  Created by Raymond Choy on 7/16/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import AudioToolbox

struct SoundManager {
    
    var gameSound: SystemSoundID = 0
    
    
    mutating func loadCorrectSound() {
        let correctSound = Bundle.main.path(forResource: "correct", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: correctSound!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    mutating func loadIncorrectSound() {
        let incorrectSound = Bundle.main.path(forResource: "wrong", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: incorrectSound!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    mutating func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
}
