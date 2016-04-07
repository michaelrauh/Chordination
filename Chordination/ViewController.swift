//
//  ViewController.swift
//  Chordination
//
//  Created by Michael Rauh on 2/21/16.
//  Copyright © 2016 Bijective. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var soundLoader = SoundLoader()
    var chordTranslator = ChordTranslator()

    @IBOutlet weak var selectedTonic: UISegmentedControl!
    @IBOutlet weak var selectedModifier: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playClicked(sender: UIButton) {
        let desiredSound = getDesiredSound()
        
        soundLoader.play(desiredSound)
    }
    @IBAction func tonicChanged(sender: UISegmentedControl) {
        updateView()
    }
    
    @IBAction func modifierChanged(sender: UISegmentedControl) {
        updateView()
    }
    func getDesiredSound() -> Int {
        let selectedIndex = selectedTonic.titleForSegmentAtIndex(selectedTonic.selectedSegmentIndex)!
        let indexModifier = selectedModifier.titleForSegmentAtIndex(selectedModifier.selectedSegmentIndex)!
        
        return chordTranslator.translate(selectedIndex, modifier: indexModifier)
    }
    
    func updateView(){
        print(getDesiredSound())
    }

}

