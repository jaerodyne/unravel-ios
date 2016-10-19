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
}
