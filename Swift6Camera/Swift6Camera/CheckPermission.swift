//
//  CheckPermission.swift
//  Swift6Camera
//
//  Created by 西谷恭紀 on 2020/12/13.
//

import Foundation
import Photos


class CheckPermission{
    
    //ユーザに許可を促す
    func checkCamera(){
        PHPhotoLibrary.requestAuthorization { (status) in
            
            switch(status){
            
            case .authorized:
                print("authorized")
                
            case .notDetermined:
                print("notDetermined")
                
            case .restricted:
                print("restricted")
                
            case .denied:
                print("denied")
                
            case .limited:
                print("limited")
                
            @unknown default:
                break
            }
            
        }
    }
    
}
