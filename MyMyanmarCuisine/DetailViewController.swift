//
//  DetailViewController.swift
//  MyMyanmarCuisine
//
//  Created by Zin Maung on 5/23/17.
//  Copyright © 2017 Zin Maung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    //Create outlets and references
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    
    @IBOutlet weak var detailTextView: UITextView!
    
    //Create 3 variables
    var sentData1: String!
    var sentData2: String!
    var sentData3: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        detailTitle.textColor = UIColor (red: 248/255, green: 134/255, blue: 36/255, alpha: 1.0)
        
        
        detailTitle.text = sentData1
        detailDescription.text = sentData2
        detailImageView.image = UIImage (named: sentData3)
        
        //Create title on pages
        self.navigationItem.title = sentData1
        
        //Create detail title on individual page
        if detailTitle.text == "Chicken"{
            
            detailTextView.text = "'Ingredients'\n\n- 2 lbs chicken drumsticks or thighs\n- 2 large onions, roughly chopped\n- 3 large cloves garlic, peeled\n- 2 in piece ginger, peeled\n- 2 tablespoons peanut oil\n- 1/2 tsp shrimp paste or 3 tbs fish sauce\n- 1 tsp salt\n- 2 can of coconut milk\n- 2 tsp chilli powder"
        }
        
        if detailTitle.text == "Shrimp"{
            
            detailTextView.text = "'Ingredients'\n\n- 4 to 6 prawns\n- 1 yellow onion\n- 4 garlic cloves\n- ginger\n- 1 tablespoon of paprika\n- a dash of tumeric powder\n- 5 tablespoons of vegetable oil\n- 1/2 teaspoon of salt\n- 1 tomato"
        }
        
        if detailTitle.text == "Snacks"{
            
            detailTextView.text = "'Laphat Thoke Ingredients'\n\n- 1 cup organic dried green tea leaves, loosely packed\n- 1 cup kale, green cabbage or Napa cabbage, finely chopped or shredded\n- ½ cup finely chopped cilantro, loosely packed\n- ½ cup green onions, finely chopped\n-  tablespoon garlic paste\n- 2 tablespoons finely chopped ginger root\n- 2 green chilies, minced (optional)\n- juice squeezed fresh from one lime\n- generous pinch of salt"
        }
        
        if detailTitle.text == "Soup"{
            
            detailTextView.text = "'Kyay Oh Ingredients'\n\n- 300g vermicelli noodles\n- 1.5 lb of ground pork\n- 1/2 lb of fish balls\n- 1 tablespoons black peppercorns, crushed\n-  2 eggs\n- some fresh smashed ginger root\n- green onion"
        }
        
        if detailTitle.text == "Desserts"{
            
            detailTextView.text = "'Sweet Tapioca Ingredients'\n\n- glutinous rice flour – 800 g\n- rice flour – 200 g\n- water"
            
        }
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
