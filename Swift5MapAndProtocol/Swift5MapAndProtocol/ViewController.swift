//
//  ViewController.swift
//  Swift5MapAndProtocol
//
//  Created by 西谷恭紀 on 2020/12/05.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate,UIGestureRecognizerDelegate,SearchLocationDelegate {

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
    
    @IBAction func gotoSearchVC(_ sender: Any) {
        
        //画面遷移
        performSegue(withIdentifier: "next", sender: nil)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next"{
            
            
            let nextVC = segue.destination as! NextViewController
            nextVC.delegate = self
            
        }
    }
    
    //委任されたデリゲートメソッド
    func seachLacation(latitudeValue: String, longitudeValue: String) {
        
        if latitudeValue.isEmpty != true || longitudeValue.isEmpty != true{
            
            let latitudeString = latitudeValue
            let longitudeString = longitudeValue
            
            //緯度経度からコーディネート
            let coordinate = CLLocationCoordinate2DMake(Double(latitudeValue)!,Double(longitudeValue)!)
            
            //表示される範囲を指定
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            
            //領域を指定
            let reagion = MKCoordinateRegion(center: coordinate, span: span)
            
            //領域をMapViewに設定する
            mapView.setRegion(reagion, animated: true)
            
            //緯度経度から住所へ変換する
            convert(lat:Double(latitudeValue)!, long: Double(longitudeValue)!)
            
            //ラベルに表示
            self.addressLabel.text = addressString
            
        }else{
            self.addressLabel.text = "表示できません"
        }
    
    }
    
    
    
    
    
    
}

