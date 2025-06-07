//
//  MediaPlayer.swift
//  Media
//
//  Created by Ángel González on 07/06/25.
//

import Foundation
import AVFoundation

class MediaPlayer {
    var aPlayer: AVAudioPlayer?
    var vPlayer: AVPlayer!
    
    func playSound (withURL: URL) {
        do {
            aPlayer = try AVAudioPlayer(contentsOf:withURL)
            aPlayer?.prepareToPlay()
            aPlayer?.setVolume(0.1, fadeDuration:0.1)
            aPlayer?.play()
        }
        catch {
            
        }
    }
    
    func stopSound() {
        if aPlayer != nil {
            aPlayer?.stop()
            aPlayer = nil
        }
    }
    
    func playVideo (withURL: URL) -> AVPlayer {
        vPlayer = AVPlayer (url: withURL)
        return vPlayer
    }
}
