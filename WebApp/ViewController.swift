//
//  ViewController.swift
//  WebApp
//
//  Created by Abuzer Emre Osmanoğlu on 3.10.2017.
//  Copyright © 2017 Abuzer Emre Osmanoğlu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.yakuter.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        webView.allowsBackForwardNavigationGestures = true
        
        setNeedsStatusBarAppearanceUpdate()
        
        view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .default
    }


}

