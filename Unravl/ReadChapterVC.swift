//
//  ReadChapterVC.swift
//  Unravl
//
//  Created by Jillian Somera on 10/20/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit

class ReadChapterVC: UIViewController {
    
    @IBOutlet weak var storyTextView: UITextView!
    
    let baseURL = "https://unravl.herokuapp.com/demo"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getJSON()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getJSON() {

        let url = NSURL(string: baseURL)
        let request = URLRequest(url: url! as URL)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: request) { (data, response, error) -> Void in

            if error == nil {
                let swiftyJSON = JSON(data: data!)
                print(swiftyJSON)
//                let theTitle = swiftyJSON["results"].arrayValue
//
//                for title in theTitle {
//                    let titles = title["title"].stringValue
//                    print(titles)
//                }
//
//                //                print(theTitle)
//
//            } else {
//                print("There was an error")
            }
        }
        task.resume()
    }
}
