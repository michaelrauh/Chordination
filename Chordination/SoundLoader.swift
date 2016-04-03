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
    
    var sounds = [Int: AVAudioPlayer]()
    
    init () {
        load()
    }
    
    func load() {
        for index in 23...80 {
            let urlStub = String(index)
            let note = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("../sounds/\(urlStub)", ofType: "wav")!)
            sounds[index] = try! AVAudioPlayer(contentsOfURL: note)
        }
    }
    
    func play(index: Int) {
        sounds[index]!.prepareToPlay()
        sounds[index]!.play()
    }
    
    
}