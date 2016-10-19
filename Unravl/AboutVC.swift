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
        self.dismiss(animated: true, completion: nil)
//        guard (navigationController?.popViewController(animated:true)) != nil
//            else {
//                print("No Navigation Controller")
//                return
//        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        scrollView = UIScrollView(frame: view.bounds)
//        1
//        scrollView.contentOffset = CGPoint(x: 1000, y: 450)
    }

//    override func viewDidAppear(_ animated: Bool) {
//        var contentLength: CGFloat = 0.0
//        
//        let scrollLength = scrollView.frame.size.length
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
