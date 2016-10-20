//
//  WordsVC.swift
//  Unravl
//
//  Created by Apprentice on 10/14/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit
import WebKit

class WordsVC: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView: UIWebView!
    
    @IBAction func homeBtnPressed(_ sender: AnyObject) {
//        dismiss(animated: true, completion: nil)
        guard navigationController?.popToRootViewController(animated: true) != nil
            else {
                print("No Navigation Controller")
                return
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
//        print(getJSON())
        
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "public") {
            let fragUrl = NSURL(string: "#FRAG_URL", relativeTo: url)!
            let myRequest = NSURLRequest(url: fragUrl as URL)
            webView.delegate = self
            webView.loadRequest(myRequest as URLRequest)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.scrollView.isScrollEnabled = false
        webView.scrollView.bounces = false
        
    }

    override func viewDidAppear(_ animated: Bool) {

    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if String(describing: request) == "https://www.wtf.com/wtf/wtaf" {
            performSegue(withIdentifier: "FinishedGamesVC", sender: nil)

        }
        return true
    }
}
        


