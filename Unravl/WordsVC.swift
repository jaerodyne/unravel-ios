//
//  WordsVC.swift
//  Unravl
//
//  Created by Apprentice on 10/14/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit

class WordsVC: UIViewController {

    @IBOutlet weak var wordsCounterLbl: UILabel!
    
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let localfilePath = Bundle.main.url(forResource: "home", withExtension: "html");
//        let myRequest = NSURLRequest(url: localfilePath!);
        webView.loadRequest(NSURLRequest(url: NSURL(string: "https://d3-testing.herokuapp.com/")! as URL) as URLRequest)
//        webView.loadRequest(myRequest as URLRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
