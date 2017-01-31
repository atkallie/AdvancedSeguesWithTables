//
//  SecondViewController.swift
//  AdvancedSeguesWithTables
//
//  Created by Ahmed T Khalil on 1/19/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var activeRow2VC: Int?
    @IBOutlet var rowLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let a = activeRow2VC {
            rowLabel.text = String(a)
        }
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
