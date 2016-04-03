//
//  ChordTranslator.swift
//  Chordination
//
//  Created by Linus Falck-Ytter on 4/3/16.
//  Copyright © 2016 Bijective. All rights reserved.
//

import Foundation

class ChordTranslator {
    
    let translationDict: [String: Int] = ["A": 57, "B": 59, "C": 60, "D": 62, "E": 64, "F": 65, "G": 67]
    
    func translate(note: String) -> Int
    {
        return translationDict[note]!
    }
}