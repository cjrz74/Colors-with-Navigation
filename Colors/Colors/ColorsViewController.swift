//
//  ViewController.swift
//  Colors
//
//  Created by Jacob Overschmidt on 7/14/17.
//  Copyright © 2017 Jacob Overschmidt. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var colorToPass:String!
    @IBOutlet weak var colorsTableView: UITableView!

    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    override func viewDidLoad() {
        colorsTableView.dataSource = self
        colorsTableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]

        let colorss = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
        cell.backgroundColor = colorss[indexPath.row % self.colors.count]
        colorToPass = colors[indexPath.row]
        //performSegue(withIdentifier: "segueColor", sender: self)
        return cell
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        if (segue.identifier == "segueColor"){
            let ColorsDetailedViewController = segue.destination as! ColorsDetailViewController
            ColorsDetailedViewController.passedColor = colorToPass
        }
        
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
