//
//  ViewController.swift
//  Swift5MapAndProtocol
//
//  Created by 西谷恭紀 on 2020/12/05.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate,UIGestureRecognizerDelegate {

    @IBOutlet var longPress: UILongPressGestureRecognizer!
    @IBOutlet var mapView: MKMapView!
    var locManager:CLLocationManager!
    
    @IBOutlet var settingButton: UIButton!
    
    @IBOutlet var addressLabel: UILabel!
    var addressString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
 
    }
    
    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        
        
        if sender.state  == .began{
            //tapを開始したとき
            
            
        }else if sender.state == .ended{
            //tapを終了したとき
            
            //tapした位置を指定して､MapViewの緯度経度を取得する
            
            //緯度経度から住所に変換する

        }
        
        
        
    
    
    }
    


}

