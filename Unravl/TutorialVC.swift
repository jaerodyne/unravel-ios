//
//  TutorialVC.swift
//  Unravl
//
//  Created by Apprentice on 10/16/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //        print(getJSON())
        
        if let url = Bundle.main.url(forResource: "tutorial", withExtension: "html", subdirectory: "tutorial") {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
