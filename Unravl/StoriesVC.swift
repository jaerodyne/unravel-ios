//
//  StoriesVC.swift
//  Unravl
//
//  Created by Jillian Somera on 10/14/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit

class StoriesVC: UIViewController {
    
    
    @IBOutlet weak var story: UIButton!
    
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        guard (navigationController?.popViewController(animated:true)) != nil
            else {
                print("No Navigation Controller")
                return
        }
    }
    
    let baseURL = "https://unravl.herokuapp.com/"
    
//    let baseURL = "https://api.nytimes.com/svc/mostpopular/v2/mostviewed/arts/30.json?api-key=146e6659adc244fb962209a768e81ef7"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = baseURL
        
        if let url = NSURL(string: urlString) {
            if let data = try? NSData(contentsOf: url as URL, options: []) {
                let json = JSON(data: data as Data)
//                 print(json)

                var contentArray = [String]()
                
                for (_, value) in json {
//                    print( (value["content"]))
                    let content = value["content"].stringValue
//                    print(content)
                    contentArray.append(content)
//                    story.setTitle(content, for: UIControlState.normal)
                }
                print(contentArray)
//                let content = json["content"].stringValue
//                print(content)
//                story.setTitle(content, for: UIControlState.normal)
                let title = contentArray.first
                story.setTitle(title, for: UIControlState.normal)
            }
        }

        // Do any additional setup after loading the view.
//         getJSON()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func getJSON() {
//        
//        let url = NSURL(string: baseURL)
//        let request = URLRequest(url: url! as URL)
//        let session = URLSession(configuration: URLSessionConfiguration.default)
//        let task = session.dataTask(with: request) { (data, response, error) -> Void in
//            
//            if error == nil {
//                let swiftyJSON = JSON(data: data!)
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
//            }
//            
//        }
//        
//        task.resume()
//    }
    
    
//    func getJSON() {
//
//        let url = NSURL(string: baseURL)
//        let request = URLRequest(url: url! as URL)
//        let session = URLSession(configuration: URLSessionConfiguration.default)
//        let task = session.dataTask(with: request) { (data, response, error) -> Void in
//            
//            if error == nil {
//                let swiftyJSON = JSON(data: data!)
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
//            }
//            
//        }
//        
//        task.resume()
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
