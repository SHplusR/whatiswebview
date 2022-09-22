//
//  ViewController.swift
//  whatiswebview
//
//  Created by HYORI SIM on 2022/09/22.
//

import UIKit
import WebKit

class ViewController:UIViewController,WKUIDelegate{
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myurl = URL(string: "https://naver.com")
        let myrequest = URLRequest(url: myurl!)
        webView.load(myrequest)
        
    }


}

