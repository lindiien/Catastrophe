//
//  ViewController.swift
//  Catastrophe
//
//  Created by Mason Ballowe on 12/7/17.
//  Copyright © 2017 D27 Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func catastropheProgramSelected(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToEventTypeSegue", sender: self)
    }
    
    
    

}

