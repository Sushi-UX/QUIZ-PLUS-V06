//
//  SoundPlayer.swift
//  EnhanceQuizStarter
//
//  Created by Raymond Choy on 7/17/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import AudioToolbox
import AVFoundation
import GameKit

class SoundPlayer {
    
    
    var correctAnswerSound: SystemSoundID = 0
    var inCorrectAnswerSound: SystemSoundID = 0
    
 
    func loadAnswerSounds() {
        loadSounds(fromFile: "right.wav", soundID: &correctAnswerSound)
        loadSounds(fromFile: "wrong.wav", soundID: &inCorrectAnswerSound)
    }
    
    func loadSounds(fromFile fileName: String, soundID: inout SystemSoundID) {
        let path = Bundle.main.path(forResource: fileName, ofType: nil)
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundID)
    }
    
    func playCorrectAnswerSound() {
        AudioServicesPlaySystemSound(correctAnswerSound)
    }
    
    func playIncorrectAnswerSound() {
        AudioServicesPlaySystemSound(inCorrectAnswerSound)
    }
    
}

