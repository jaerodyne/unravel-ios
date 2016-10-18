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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
//        if let result = webView.stringByEvaluatingJavaScript(from: "window.location") {
//            print("this is \(result)")
//        }
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if String(describing: request) == "https://www.google.com/" {
            performSegue(withIdentifier: "FinishedGamesVC", sender: nil)

        }
        return true
    }
    
//    func nextPage()  {
    
//        performSegue(withIdentifier: "FinishedGamesVC", sender: nil)
    
//        let result = webView.stringByEvaluatingJavaScript(from: "end")
//        while result == nil {
//            print("YO")
//        }
//            NSLog(webView.stringByEvaluatingJavaScript(from: "end")!)

//            performSegue(withIdentifier: "FinishedGamesVC", sender: nil)
        
//            NSLog("viewDidAppear")
//        }
    }

//}

//        if let result = webView.stringByEvaluatingJavaScript(from: "end()") {
//            performSegue(withIdentifier: "FinishedGamesVC", sender: nil)

//            NSLog("result: \(result)")
//        }
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
        


