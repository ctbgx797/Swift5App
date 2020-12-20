//
//  IntroViewController.swift
//  Swift5introApp
//
//  Created by 西谷恭紀 on 2020/12/20.
//

import UIKit
import Lottie

class IntroViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    
    var onboardArray = ["1","2","3","4","5"]
    var onboardStringArray = ["あいうえお","かきくけこ","さしすせそ","タチツテト","ナニヌネノ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ページングができるようになる
        scrollView.isPagingEnabled = true
        setUpScroll()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    func setUpScroll() {
        
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)
        
        for i in 0...4{
            
            let onboardLabel = UILabel(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: view.frame.size.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            
            onboardLabel.font = UIFont.boldSystemFont(ofSize:15.0)
            onboardLabel.textAlignment = .center
            onboardLabel.text = onboardStringArray[i]
            scrollView.addSubview(onboardLabel)
            
        }
    }

    
}
