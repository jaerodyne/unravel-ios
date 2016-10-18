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

    @IBOutlet weak var wordsCounterLbl: UILabel!
    
    @IBOutlet var webView: UIWebView!
    
    @IBAction func homeBtnPressed(_ sender: AnyObject) {
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


    override func viewDidAppear(_ animated: Bool) {
        if webView.stringByEvaluatingJavaScript(from: "end()") != nil {
            performSegue(withIdentifier: "FinishedGamesVC", sender: nil)
        
            NSLog("viewDidAppear")
        }
    }

}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
        
//        Check if javascript function is run?
//        If so, segue to next page
        


