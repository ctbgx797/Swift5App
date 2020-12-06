//
//  NextViewController.swift
//  Swift5MapAndProtocol
//
//  Created by 西谷恭紀 on 2020/12/05.
//

import UIKit

protocol SearchLocationDelegate {
    func seachLacation(latitudeValue:String,longitudeValue:String)
}

class NextViewController: UIViewController {

    @IBOutlet var latitudeTextField: UITextField!  //緯度
    @IBOutlet var longitudeTextField: UITextField! //経度
    
    var delegate:SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func okAction(_ sender: Any) {
        //入力された値を取得
        
        //デリゲートメソッドの引数に入れる
        
        //両方のTextFieldがからでなければ戻る
    }
    
}
