//
//  ViewController.swift
//  Swift6Camera
//
//  Created by 西谷恭紀 on 2020/12/13.
//

import UIKit
import Photos

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    var  checkPermission = CheckPermission()
    
    @IBOutlet var backImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkPermission.checkCamera()
        
    }
    @IBAction func camera(_ sender: Any) {
        
        let souceType:UIImagePickerController.SourceType = .camera
        createImagePicker(souceType: souceType)
        
    }
    
    
    
    @IBAction func album(_ sender: Any) {
        
        let souceType:UIImagePickerController.SourceType = .photoLibrary
        createImagePicker(souceType: souceType)
        
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
    
    //撮影がキャンセルされたとき
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickerImage = info[.editedImage] as? UIImage{
            backImageView.image = pickerImage
            
            //閉じる処理
            picker.dismiss(animated: true, completion: nil)
        }
    }
}

