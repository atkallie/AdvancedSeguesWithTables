//
//  ViewController.swift
//  AdvancedSeguesWithTables
//
//  Created by Ahmed T Khalil on 1/19/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit


//YOU HAVE TO GIVE THE VIEW CONTROLLER THE ABILITY TO CONTROL THE TABLE VIEW BY CONTROL DRAGGING FROM TABLE VIEW TO YELLOW DOT IN THE STORYBOARD!!!

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var activeRow: Int = 0
    
    //initalize your table
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 5
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Row: \(indexPath.row+1)"
        
        return cell
        
    }
    
    //if a row is selected...
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        activeRow = indexPath.row + 1
        
        //perform the segue! (technically just jumps to other VC)
        performSegue(withIdentifier: "1to2", sender: nil)
        //if you want to do something along with the segue, prepare the data before the segue is executed (see below)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "1to2"{
        
            let secondVC = segue.destination as! SecondViewController
           
            secondVC.activeRow2VC = activeRow
        
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

