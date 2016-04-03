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
    
    init () {
        audioPlayer = try! AVAudioPlayer(contentsOfURL: sound)
        audioPlayer.prepareToPlay()
    }
    
    func play() {
        audioPlayer.play()
    }
}