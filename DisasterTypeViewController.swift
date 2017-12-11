//
//  DisasterTypeViewController.swift
//  Catastrophe
//
//  Created by Mason Ballowe on 12/10/17.
//  Copyright © 2017 D27 Studios. All rights reserved.
//

import UIKit

class DisasterTypeViewController: UIViewController {
    
    var selection = ""
    
    
    @IBOutlet var selectionLabel: UILabel!
    @IBOutlet var dataLabelOne: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.updateLabelsForSelection()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.updateLabelsForSelection()
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "selectNewDisasterSegue", sender: self)
    }
    
    @IBAction func prepareButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "prepareButtonSegue", sender: self)
    }
    
    @IBAction func recoverButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "prepareButtonSegue", sender: self)
    }
    
    
    
    
    func updateLabelsForSelection () {
        self.selectionLabel.text = self.selection
        
        if self.selection == "Hurricane" {
            self.dataLabelOne.text = """
            Learn terms, facts, and safety tips to help you before, during, and after a hurricane. You can also read about the Saffir-Simpson Hurricane Wind Scale and the five hurricane categories.(https://www.ready.gov/hurricanes)
            
            Hurricane Safety Checklist:
            (http://www.redcross.org/images/MEDIA_CustomProductCatalog/m4340160_Hurricane.pdf)
            """
        } else if self.selection == "Fire" {
            self.dataLabelOne.text = """
            Get a Home Fire Safety Checklist and a worksheet to help you create a Home Fire Escape Plan.  You can also learn how to prevent fires, as well as what to do during and after a fire by following the links to the information below.
            
            Fire Safety Checklist: Fires can start by accident, acts of nature, or even by arson. You can help keep your family and co-workers stay safe during a fire by making sure smoke alarms work and by practicing a fire escape plan. The resources below can help you learn what to do to prevent or recover from a fire. (https://p.widencdn.net/ohbroq/145733-Tier-61-Home-Fire-Checklist-Regional-FINAL2-002)
            """
        } else if self.selection == "Flood" {
            self.dataLabelOne.text = """
            Floods are one of the most common hazards in the U.S. They can affect areas as small as a local neighborhood or community, to as large as an entire river basin and multiple states. Flooding often results from another disaster, like a hurricane.
            
            Learn basic steps to prepare for a storm and pending evacuation. You can find out what to do if you’re under a flood watch or warning, and what emergency supplies you need by following this link (http://www.redcross.org/images/MEDIA_CustomProductCatalog/m4340128_Flood.pdf)
            """
        } else if self.selection == "Earthquake" {
            self.dataLabelOne.text = """
            Learn what to do before, during, and after an earthquake.
            Learn about risks and get an Earthquake Safety Checklist. You can learn how to prepare for and what to do during an earthquake, both inside and outside. And learn what you should do and how to let your family know you’re safe after an earthquake. https://www.ready.gov/earthquakes ( Link takes user to the Ready Site that provides the user information on what to do before during and after experiencing an earthquake)
            """
        } else if self.selection == "Tornado" {
            self.dataLabelOne.text = """
            Learn what supplies you should prepare ahead and how to plan for disaster debris.  Get tornado facts and learn the conditions to stay alert for. Find out how to shelter in different structures or even if you’re outside. Learn how to stay safe, inspect the damage, and clean up after a tornado.( https://www.epa.gov/natural-disasters/tornadoes)
            """
        } else if self.selection == "Blizzard" {
            self.dataLabelOne.text = """
            A winter storm occurs when there is significant precipitation and the temperature is low enough that precipitation forms as sleet or snow, or when rain turns to ice. A winter storm can range from freezing rain and ice, to moderate snowfall over a few hours, to a blizzard that lasts for several days. Many winter storms are accompanied by dangerously low temperatures.
            
            Winter storms can cause power outages that last for days. They can make roads and walkways extremely dangerous or impassable and close or limit critical community services such as public transportation, child care, health programs and schools. Injuries and deaths may occur from exposure, dangerous road conditions, and carbon monoxide poisoning and other conditions.
            
            https://www.ready.gov/winter-weather
            """
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "prepareButtonSegue" {
            let destinationVC : ProductGroupViewController = segue.destination as! ProductGroupViewController
            destinationVC.selection = self.selection
        }
    }

}
