//
//  ProductDetailViewController.swift
//  Catastrophe
//
//  Created by Mason Ballowe on 12/7/17.
//  Copyright © 2017 D27 Studios. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    
    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productNameLabel: UILabel!
    @IBOutlet var productDescriptionLabel: UILabel!
    @IBOutlet var productPriceLabel: UILabel!
    
    var productToDisplay = Product(name: "Loading", description: "Loading", price: "Loading", image : #imageLiteral(resourceName: "hurricane"))
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.productImageView.image = self.productToDisplay.image
        self.productNameLabel.text = self.productToDisplay.name
        self.productDescriptionLabel.text = self.productToDisplay.description
        self.productPriceLabel.text = self.productToDisplay.price
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
