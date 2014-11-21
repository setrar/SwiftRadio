//
//  Radio.swift
//  SwiftRadio
//
//  Created by dev on 11/20/14.
//  Copyright (c) 2014 dev. All rights reserved.
//
// https://developer.apple.com/library/ios/documentation/Audio/Conceptual/AudioSessionProgrammingGuide/Introduction/Introduction.html

import Foundation
import AVFoundation


public class Radio {
    
    public init() {
    }
    
    public func connect(name: String, day: String)  -> Bool {
        
        let urlResponse = NSHTTPURLResponse()
        let session     = AVAudioSession.sharedInstance()
        
        var activationError: NSError?
        
        let success = AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, withOptions: AVAudioSessionCategoryOptions() , error: &activationError)
        
        if !success {
            if let error = activationError {
                println("write failure: \(error.localizedDescription)")
            }
        }
        
        return false
    }
}

