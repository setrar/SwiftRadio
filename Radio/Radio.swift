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

public protocol RadioDelegate {
    func updateBuffering(value: Bool)
    func interruptRadio()
    func resumeInterruptedRadio()
    func networkChanged()
    func connectProblem()
    func audioUnplugged()
    func metaTitleUpdated(title: String)
}


public class Radio {

    private let session     = AVAudioSession.sharedInstance()
    private var d: RadioDelegate!

    public init() {
    }
    
    public func connect(url: String,delegate: RadioDelegate!, gain: Float)  -> Bool {
        
        self.d = delegate

        var activationError: NSError?

        let success = session.setCategory(
              AVAudioSessionCategoryPlayback
            , withOptions: AVAudioSessionCategoryOptions()
            , error: &activationError)
        
        if !success {
            if let error = activationError {
                println("write network failure: \(error.localizedDescription)")
                return false
            }
        }
        
    return true
    }
}

