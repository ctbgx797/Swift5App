//
//  NextViewController.swift
//  QuestionApp
//
//  Created by 西谷恭紀 on 2020/12/06.
//

import UIKit

protocol NowScoreDelegate {
    func nowScore(score:Int)
}

class NextViewController: UIViewController {

    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var wrongLabel: UILabel!
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    var beforeCount = Int()
    
    var delegate:NowScoreDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        
        //もし最高得点であれば､入れ替え
        
        if beforeCount < correctedCount {
        
            UserDefaults.standard.set(correctedCount,forKey: "beforeCount")
            delegate?.nowScore(score: correctedCount)
        
        }else if  beforeCount > correctedCount{
            
            UserDefaults.standard.set(beforeCount,forKey: "beforeCount")
        
        }
        
        //そうでない場合は､入れ替えない
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
