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
    
    var selection = ""
    
    @IBOutlet var headerLabel: UILabel!
    
    
    @IBOutlet var tableView: UITableView!
    
    var productArray : [Product] = []
    
    var productOne = Product(name: "Hammer", description: "For hitting stuff", price: "Not too much", image : #imageLiteral(resourceName: "hurricane"))
    var productTwo = Product(name: "Shovel", description: "For digging", price: "Decent amount", image : #imageLiteral(resourceName: "hurricane"))
    var productThree = Product(name: "Rake", description: "To ruin your saturday", price: "Your spirit", image : #imageLiteral(resourceName: "hurricane"))
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.productArray = [self.productOne, self.productTwo, self.productThree]
        
        self.headerLabel.text = self.selection
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "returnToEventTypeSegue", sender: self)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
 var productSelected = Product(name: "name", description: "description", price: "price", image : #imageLiteral(resourceName: "hurricane"))
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.productSelected.name = self.productArray[indexPath.row].name
        self.productSelected.description = self.productArray[indexPath.row].description
        self.productSelected.price = self.productArray[indexPath.row].price
        self.productSelected.image = self.productArray[indexPath.row].image
        
        self.performSegue(withIdentifier: "itemSelectedSegue", sender: self)
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        let name = self.productArray[indexPath.row].name
        let description = self.productArray[indexPath.row].description
        let price = self.productArray[indexPath.row].price
        let image = self.productArray[indexPath.row].image
        
        cell.productImage.image = image
        cell.productNameLabel.text = name
        cell.productDescriptionLabel.text = description
        cell.productPriceLabel.text = price
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemSelectedSegue" {
            let destinationVC : ProductDetailViewController = segue.destination as! ProductDetailViewController
            destinationVC.productToDisplay = self.productSelected
        }
    }

    

}
