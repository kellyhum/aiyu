//
//  ReviewViewModel.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-17.
//

import Foundation
import AVFoundation

class ReviewViewModel: ObservableObject {
    @Published var sampleSpeech: String = "你好" // add @published to keep track of changes to sampleSpeech
    var synthesizer = AVSpeechSynthesizer()
    
    var utterance: AVSpeechUtterance { // computed property
        let utterance = AVSpeechUtterance(string: sampleSpeech)
        let voice = AVSpeechSynthesisVoice(language: "zh-TW")
        
        utterance.voice = voice
        
        return utterance // return the local var
    }
    
    func speakCharacter() {
        synthesizer.speak(utterance)
    }
}
