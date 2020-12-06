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
            let tapPoint = sender.location(in: view)
            
            //tapした位置(CGPoint)を指定して､MKMapView上の緯度経度を取得する
            let center = mapView.convert(tapPoint, toCoordinateFrom: mapView)
            let lat = center.latitude
            let long = center.longitude
            convert(lat: lat, long: long)
            
            
        }
    }
    
    func convert(lat:CLLocationDegrees,long:CLLocationDegrees){
        
        let geoCoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: long)
        
        //クロージャー
        //クロージャーに関しては宣言していない変数にはselfを入れてあげないといけない
        geoCoder.reverseGeocodeLocation(location){
            (placeMark,error) in
            
            if let placeMark = placeMark{
                
                if let pm = placeMark.first{
                    
                    if pm.administrativeArea != nil || pm.locality != nil{
                        
                        self.addressString = pm.name! + pm.administrativeArea! + pm.locality!
                        
                    }else{
                        
                        self.addressString = pm.name!
                    }
                    
                    self.addressLabel.text = self.addressString
                    
                }
            }
        }
    }
}

