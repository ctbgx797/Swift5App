//
//  WithOutMP3.swift
//  QuestionApp
//
//  Created by 西谷恭紀 on 2020/12/11.
//

import Foundation

class WithOutMP3: SoundFile {
    
    override func playSound(filename: String, extensionName: String) {
        
        if extensionName == "mp3" {
            
            print("このファイルは再生できません")
            
        }
        player?.stop()
        
    }
}
