//
//  TableViewController.swift
//  MyMyanmarCuisine
//
//  Created by Zin Maung on 5/20/17.
//  Copyright © 2017 Zin Maung. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //Create 3 arrays for three objects
    
    var imageList = ["chicken.jpg", "shrimp.jpg", "snacks.jpg", "soup.jpg", "desserts.jpg"]
    
    var titleList = ["Chicken", "Shrimp", "Snacks", "Soup", "Desserts"]

    var descriptionList = ["Famous Myanmar Chicken Curry", "Delicious Shrimp Curry", "La Phat Thoke - Tea leaves salads ", "Soup - Kyay Oh!", "Desserts - Tapioca"]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //Create a back bar button that we can see this on the View
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //Change this to 1 since we want one section
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //How many slots in array = the number of rows
        return titleList.count
    }

    //Create a func to populate a Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create a variable and reference to class TableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        // Configure the cell. Link with outlets from the class
        
        cell.cellTitle.text = titleList[indexPath.row]
        
        cell.cellDescription.text = descriptionList[indexPath.row]
        
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row])
        
        cell.cellTitle.textColor = UIColor(red: 248/255, green: 134/255, blue: 36/255, alpha: 1.0)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showDetail"){
        
            let DVC = segue.destination as! DetailViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow{
                
                //Create objects and referencing to variables
                let title = titleList[indexpath.row] as String
                DVC.sentData1 = title
                
                let description = descriptionList[indexpath.row] as String
                DVC.sentData2 = description
                
                let image = imageList[indexpath.row] as String
                DVC.sentData3 = image
            }
        }
    }
}
