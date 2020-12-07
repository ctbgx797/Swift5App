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
    
    var correctCount:Int = 0
    var wrongCount:Int = 0
    var maxScore:Int = 0
    var questionNumber:Int = 0
    
    let imagesList:ImagesList = ImagesList()
    
    //IBActionで検知した正答がどちらなのかを取得する
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
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
        check()
        
    }
    
    func check(){
        
        let correctAnsewer = imagesList.list[questionNumber].answer
        
        if correctAnsewer == pickedAnswer{
            print("正解")
            correctCount = correctCount + 1
        }else{
            
            print("不正解")
            wrongCount = wrongCount + 1
        }
        
    }
    
    func nextQuestipons(){
        if questionNumber <= 9{
            
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
        
        }else{
            
            print("問題が終了")
            
            //画面遷移
            
            performSegue(withIdentifier: "next", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

