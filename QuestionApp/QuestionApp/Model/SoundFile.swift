//
//  SoundFile.swift
//  QuestionApp
//
//  Created by 西谷恭紀 on 2020/12/11.
//

import Foundation
import AVFoundation


class SoundFile{
    
    var player:AVAudioPlayer?
    func playSound(filename:String,extensionName:String){
        
        //再生する
        let soundURL = Bundle.main.url(forResource: filename, withExtension: extensionName)
        
        do {
            //効果音を鳴らす
            player = try AVAudioPlayer(contentsOf:soundURL!)
            player?.play()
            
        } catch  {
            print("エラーです")
        }
        
    }
}
