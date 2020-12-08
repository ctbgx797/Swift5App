//
//  NextViewController.swift
//  QuestionApp
//
//  Created by 西谷恭紀 on 2020/12/06.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var wrongLabel: UILabel!
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
