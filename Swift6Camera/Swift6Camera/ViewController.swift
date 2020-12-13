//
//  ViewController.swift
//  Swift6Camera
//
//  Created by 西谷恭紀 on 2020/12/13.
//

import UIKit
import  Photos

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    var  checkPermission = CheckPermission()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkPermission.checkCamera()
        
    }
    @IBAction func camera(_ sender: Any) {
        
        
    }
    
    
    
    @IBAction func album(_ sender: Any) {
    }
    
    
    
    @IBAction func share(_ sender: Any) {
    }
    
    func createImagePicker(souceType:UIImagePickerController.SourceType){
        
        //インスタンスを作成
        let cameraPicker = UIImagePickerController()
        cameraPicker.sourceType = souceType
        cameraPicker.delegate = self
        
        //編集を許可するか
        cameraPicker.allowsEditing = true
        
        //カメラを起動する
        self.present(cameraPicker, animated: true, completion: nil)
        
    }
    
}

