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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answer(_ sender: Any) {

        if (sender as AnyObject).tag == 1{
        
            //○ボタンが押されたとき
            
            //ユーザーが押したボタンが○ボタンだった
            
            //○ボタンの音を流す
            
        }else if (sender as AnyObject).tag == 2{
            
            //✕ボタンが押されたとき
            
            //ユーザーが押したボタンが✕ボタンだった
            
            //✕ボタンの音を流す
            
        }
        
    }
    

}

