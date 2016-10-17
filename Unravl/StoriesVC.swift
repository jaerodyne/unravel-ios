//
//  StoriesVC.swift
//  Unravl
//
//  Created by Jillian Somera on 10/14/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit

class StoriesVC: UIViewController {
    
    let baseURL = "https://unravl.herokuapp.com/"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = baseURL
        
        if let url = NSURL(string: urlString) {
            if let data = try? NSData(contentsOf: url as URL, options: []) {
                let json = JSON(data: data as Data)
                print(json)
            }
        }

        // Do any additional setup after loading the view.
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
