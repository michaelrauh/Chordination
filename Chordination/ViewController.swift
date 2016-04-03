//
//  ViewController.swift
//  Chordination
//
//  Created by Michael Rauh on 2/21/16.
//  Copyright © 2016 Bijective. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var middleC = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("../sounds/45", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = try! AVAudioPlayer(contentsOfURL: middleC)
        audioPlayer.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playClicked(sender: UIButton) {
        audioPlayer.play()
    }

}

