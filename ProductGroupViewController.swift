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
    
    var productOne = Product(name: "Duracel Battery Pack", description: "Keep your devices online, flashlights are top priorities", price: "$11.99", image : #imageLiteral(resourceName: "Duracel"))
    var productTwo = Product(name: "Niagara Water Pack", description: "Clean water may be cut off for extended periods. Be prepared, and keep it out of the sun. ", price: "$3.97", image : #imageLiteral(resourceName: "Water"))
    var productThree = Product(name: "Lux-Pro Flashlight", description: "It's dark with no power. Don't be scared of the dark anymore.", price: "$14.97", image : #imageLiteral(resourceName: "flashlight"))
    var productFour = Product(name: "Bayou Classic Stove", description: "Propare stove in case you need to cook or sterilize water without electricity.", price: "$59.97", image : #imageLiteral(resourceName: "stove"))
    var productFive = Product(name: "First Aid Kit", description: "A lot of first aid essentials in one place. ", price: "$89.00", image : #imageLiteral(resourceName: "AidKit"))
    var productSix = Product(name: "Goal Zero Solar Generator", description: "Keep vital functions running while you wait for government rebuild to complete.", price: "$699.99", image : #imageLiteral(resourceName: "generator"))
    var productSeven = Product(name: "Wireless Chainsaw", description: "Wireless for powerless situations. Great for debris/street clearing", price: "$180.55", image: #imageLiteral(resourceName: "chainsaw"))
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.productArray = [self.productOne, self.productTwo, self.productThree, self.productSeven, self.productFour, self.productFive, self.productSix]
        
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
