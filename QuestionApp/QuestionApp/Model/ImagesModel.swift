//
//  ImagesModel.swift
//  QuestionApp
//
//  Created by 西谷恭紀 on 2020/12/06.
//

import Foundation

class ImagesModel {
    
    //画像名を取得して､画像名が人間かそうでないかを判定する機能
    let imageText:String
    let answer:Bool
    
    //イニシャライザ
    init(imageName:String,correctOrNot:Bool) {
        
        imageText = imageName
        answer = correctOrNot
        
    }
    
    
}

