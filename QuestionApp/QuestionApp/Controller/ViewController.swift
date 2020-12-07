//
//  ViewController.swift
//  QuestionApp
//
//  Created by 西谷恭紀 on 2020/12/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var maxScoreLabel: UILabel!
    
    let imagesList = ImagesList()
    
    //IBActionで検知した正答がどちらなのかを取得する
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answer(_ sender: Any) {

        if (sender as AnyObject).tag == 1{
        
            //○ボタンが押されたとき
            pickedAnswer = true
            
            //ユーザーが押したボタンが○ボタンだった
            
            
            //○ボタンの音を流す
            
            
        }else if (sender as AnyObject).tag == 2{
            
            //✕ボタンが押されたとき
            pickedAnswer = false
            
            //ユーザーが押したボタンが✕ボタンだった
            
            
            //✕ボタンの音を流す
            
        }
        
        //チェック:回答があっているか(pickedAnswerとImagesListのcorrectOrNotの値が一致しているかどうか)
        
    }
    

}

