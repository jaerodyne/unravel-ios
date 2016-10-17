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
        if let url = Bundle.main.url(forResource: "home", withExtension: "html") {
            let fragUrl = NSURL(string: "#FRAG_URL", relativeTo: url)!
            let myRequest = NSURLRequest(url: fragUrl as URL)
            webView.delegate = self
            webView.loadRequest(myRequest as URLRequest)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        getJSON()
        
    }

    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        NSLog("request: \(request)")
        return true
    }
    
    let baseURL = "https://unravl.herokuapp.com/"
    
    func getJSON() {
        
        let urlString = baseURL
        
        if let url = NSURL(string: urlString) {
            if let data = try? NSData(contentsOf: url as URL, options: []) {
                let json = JSON(data: data as Data)
//              print(json)
                
                var contentArray = [String]()
                
                for (_, value) in json {
                    //                    print( (value["content"]))
                    let content = value["content"].stringValue
                    //                    print(content)
                    contentArray.append(content)
                    //                    story.setTitle(content, for: UIControlState.normal)
                }
                print(contentArray)
//                iterate through array and pass each sentence to javascript, deleting the object each time it's passed through
//                _ = contentArray.first
//                sentence.setTitle(title, for: UIControlState.normal)
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
        
    }
}
