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
    


}
