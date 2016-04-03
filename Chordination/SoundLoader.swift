//
//  SoundLoader.swift
//  Chordination
//
//  Created by Linus Falck-Ytter on 4/3/16.
//  Copyright © 2016 Bijective. All rights reserved.
//

import Foundation
import AVFoundation

class SoundLoader {
    
    var sound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("../sounds/45", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    var sounds = [Int: AVAudioPlayer]()
    
    init () {
        audioPlayer = try! AVAudioPlayer(contentsOfURL: sound)
        audioPlayer.prepareToPlay()
        load()
    }
    
    func load() {
        for index in 23...80 {
            let urlStub = String(index)
            let note = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("../sounds/\(urlStub)", ofType: "wav")!)
            sounds[index] = try! AVAudioPlayer(contentsOfURL: note)
        }
    }
    
    func play() {
        sounds[66]!.play()
    }
    
    
}