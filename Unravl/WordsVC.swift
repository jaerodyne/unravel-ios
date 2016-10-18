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
        
        print(getJSON())
        
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "public") {
            let fragUrl = NSURL(string: "#FRAG_URL", relativeTo: url)!
            let myRequest = NSURLRequest(url: fragUrl as URL)
            webView.delegate = self
            webView.loadRequest(myRequest as URLRequest)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()


        
    }

    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        NSLog("request: \(request)")
        
        if let scheme = request.url?.scheme {
            if scheme == "mike" {
//                now we can react
                NSLog("we got a mike request: \(scheme)")
                
                if let result = webView.stringByEvaluatingJavaScript(from: "someJavascriptFunc()") {
                    NSLog("result: \(result)")
                }
                return false
            }
        }
        return true
    }
    }
    
    let baseURL = "https://unravl.herokuapp.com/"
    
    func getJSON() -> String {
        
        let urlString = baseURL
        
        var sentence = ""
        
        if let url = NSURL(string: urlString) {
            if let data = try? NSData(contentsOf: url as URL, options: []) {
                let json = JSON(data: data as Data)
                
                var contentArray = [String]()
                
                for (_, value) in json {
                    let content = value["content"].stringValue
                    contentArray.append(content)
                }
                sentence = contentArray.joined(separator: "/n") + "/n"
//                iterate through array and pass each sentence to javascript, deleting the object each time it's passed through
                
            }
        }
        return sentence
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
        


