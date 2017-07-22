//
//  ColorsDetailViewController.swift
//  Colors
//
//  Created by Jacob Overschmidt on 7/21/17.
//  Copyright © 2017 Jacob Overschmidt. All rights reserved.
//

import UIKit

class ColorsDetailViewController: UIViewController {
   
  
    @IBOutlet weak var colorsLabel: UILabel!
    var passedColor:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        colorsLabel.text = "color"
        self.view.backgroundColor = UIColor.blue
       
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
