//
//  ProductGroupViewController.swift
//  Catastrophe
//
//  Created by Mason Ballowe on 12/7/17.
//  Copyright © 2017 D27 Studios. All rights reserved.
//

import UIKit

class ProductGroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let list = ["Hello", "yo", "greetings", "meh"]
    
    
    @IBOutlet var tableView: UITableView!
    
    var productArray : [Product] = []
    
    var productOne = Product(name: "Hammer", description: "For hitting stuff", price: "Not too much")
    var productTwo = Product(name: "Shovel", description: "For digging", price: "Decent amount")
    var productThree = Product(name: "Rake", description: "To ruin your saturday", price: "Your spirit")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.productArray = [self.productOne, self.productTwo, self.productThree]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "returnToEventTypeSegue", sender: self)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        let name = self.productArray[indexPath.row].name
        let description = self.productArray[indexPath.row].description
        let price = self.productArray[indexPath.row].price
        
        cell.productImage.image = #imageLiteral(resourceName: "hurricane")
        cell.productNameLabel.text = name
        cell.productDescriptionLabel.text = description
        cell.productPriceLabel.text = price
        
        return cell
    }
    
    
    

    

}
