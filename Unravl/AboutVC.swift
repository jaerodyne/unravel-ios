//
//  AboutVC.swift
//  Unravl
//
//  Created by Apprentice on 10/16/16.
//  Copyright © 2016 Lit AF. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        guard (navigationController?.popViewController(animated:true)) != nil
            else {
                print("No Navigation Controller")
                return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
