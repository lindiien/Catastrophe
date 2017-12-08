//
//  EventTypeViewController.swift
//  Catastrophe
//
//  Created by Mason Ballowe on 12/7/17.
//  Copyright © 2017 D27 Studios. All rights reserved.
//

import UIKit

class EventTypeViewController: UIViewController {

    @IBOutlet var hurricaneButton: UIButton!
    @IBOutlet var fireButton: UIButton!
    @IBOutlet var floodButton: UIButton!
    @IBOutlet var earthquakeButton: UIButton!
    @IBOutlet var tornadoButton: UIButton!
    @IBOutlet var tsunamiButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "returnToStartSegue", sender: self)
    }
    
    @IBAction func hurricaneButtonPressed(_ sender: Any) {
        self.selectionString = "Hurricane"
        self.performSegue(withIdentifier: "productGroupSelectedSegue", sender: self)
    }
    
    @IBAction func fireButtonPressed(_ sender: Any) {
        self.selectionString = "Fire"
        self.performSegue(withIdentifier: "productGroupSelectedSegue", sender: self)
    }
    
    @IBAction func floodButtonPressed(_ sender: Any) {
        self.selectionString = "Flood"
        self.performSegue(withIdentifier: "productGroupSelectedSegue", sender: self)
    }
    
    @IBAction func earthquakeButtonPressed(_ sender: Any) {
        self.selectionString = "Earthquake"
        self.performSegue(withIdentifier: "productGroupSelectedSegue", sender: self)
    }
    
    @IBAction func tornadoButtonPressed(_ sender: Any) {
        self.selectionString = "Tornado"
        self.performSegue(withIdentifier: "productGroupSelectedSegue", sender: self)
    }
    
    @IBAction func tsunamiButtonPressed(_ sender: Any) {
        self.selectionString = "Tsunami"
        self.performSegue(withIdentifier: "productGroupSelectedSegue", sender: self)
    }
    
    
    
    var selectionString = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "productGroupSelectedSegue" {
            let destinationVC : ProductGroupViewController = segue.destination as! ProductGroupViewController
            destinationVC.selection = self.selectionString
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}
