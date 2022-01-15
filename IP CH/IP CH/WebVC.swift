//
//  WebVC.swift
//  IP CH
//
//  Created by Rakshit Bhardwaj on 15/01/20.
//

import UIKit

class WebVC: UIViewController : WKNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }


}
