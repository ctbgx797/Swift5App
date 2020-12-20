//
//  IntroViewController.swift
//  Swift5introApp
//
//  Created by 西谷恭紀 on 2020/12/20.
//

import UIKit
import Lottie

class IntroViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    
    var onboardArray = ["1","2","3","4","5"]
    var onboardStringArray = ["あいうえお","かきくけこ","さしすせそ","タチツテト","ナニヌネノ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ページングができるようになる
        scrollView.isPagingEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    func setUpScroll() {
        
    }

    
}
