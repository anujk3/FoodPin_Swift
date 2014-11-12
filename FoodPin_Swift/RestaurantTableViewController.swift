//
//  RestaurantTableViewController.swift
//  FoodPin_Swift
//
//  Created by Anuj Katiyal on 04/11/14.
//  Copyright (c) 2014 Anuj Katiyal. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "Thai Cafe"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg",
        "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg",
        "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg",
        "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg",
        "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney",
        "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe",
        "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish",
        "Spanish", "British", "Thai"]
    
    var restaurantIsVisited = [Bool](count: 21, repeatedValue: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        println(self.restaurantIsVisited);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.restaurantNames.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as CustomTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
        
        cell.thumbnailImageView.layer.cornerRadius = 10
        //cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width/2
        cell.thumbnailImageView.clipsToBounds = true
        
        cell.locationLabel.text = restaurantLocations[indexPath.row]
        cell.typeLabel.text = restaurantLocations[indexPath.row]
        
        if (self.restaurantIsVisited[indexPath.row] == true){
            cell.favIconImageView.hidden = false
            //cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }else{
            cell.favIconImageView.hidden = true;
            //cell.accessoryType = UITableViewCellAccessoryType.None;
        }
        
        
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    // Called after the user changes the selection.
    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        // Create an option menu using actionsheet
        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: UIAlertControllerStyle.ActionSheet);
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel , handler: nil)
        optionMenu.addAction(cancelAction)
        
        let callActionHandler = { (action:UIAlertAction!) -> Void in
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later", preferredStyle: UIAlertControllerStyle.Alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
        }
        
        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: UIAlertActionStyle.Default, handler: callActionHandler);
        optionMenu.addAction(callAction)
        
        
        let isVisitedTitle = self.restaurantIsVisited[indexPath.row] ? "Oops" : "I've been here";
        
        let isVisitedAction = UIAlertAction(title: isVisitedTitle, style: UIAlertActionStyle.Default) { (action: UIAlertAction!) -> Void in
            let cell = tableView.cellForRowAtIndexPath(indexPath) as CustomTableViewCell
            
            if self.restaurantIsVisited[indexPath.row] == true {
                cell.favIconImageView.hidden = true;
                //cell?.accessoryType = UITableViewCellAccessoryType.None;
                self.restaurantIsVisited[indexPath.row] = false;
            }else{
                cell.favIconImageView.hidden = false;
                self.restaurantIsVisited[indexPath.row] = true;
                //cell?.accessoryType = UITableViewCellAccessoryType.Checkmark;
            }
            
        }
        
        optionMenu.addAction(isVisitedAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil);
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }*/
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            println(self.restaurantIsVisited.removeAtIndex(indexPath.row))
            println(self.restaurantLocations.removeAtIndex(indexPath.row))
            println(self.restaurantNames.removeAtIndex(indexPath.row))
            println(self.restaurantTypes.removeAtIndex(indexPath.row))
            println(self.restaurantImages.removeAtIndex(indexPath.row))
        }
        
        println("Total elements in array are \(restaurantImages.count)")
//        for name in restaurantNames{
//            println(name)
//        }
        self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        //self.tableView.reloadData();
    }
    
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        var shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Share") { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
            let shareMenu = UIAlertController(title: nil, message: "Share Using", preferredStyle: UIAlertControllerStyle.ActionSheet)
            let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.Default, handler: nil);
            let facebookAction = UIAlertAction(title: "Facebook", style: UIAlertActionStyle.Default, handler: nil)
            let emailAction = UIAlertAction(title: "Email", style: UIAlertActionStyle.Default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
            
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(facebookAction)
            shareMenu.addAction(emailAction)
            shareMenu.addAction(cancelAction)
            
            self.presentViewController(shareMenu, animated: true, completion: nil)
        }
        shareAction.backgroundColor = UIColor(red: 255.0/255.0, green: 166.0/255.0, blue: 51.0/255.0, alpha: 1.0)
        
        var deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Delete") { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
            
            //Delete the rows
            self.restaurantNames.removeAtIndex(indexPath.row)
            self.restaurantIsVisited.removeAtIndex(indexPath.row)
            self.restaurantImages.removeAtIndex(indexPath.row)
            self.restaurantLocations.removeAtIndex(indexPath.row)
            self.restaurantTypes.removeAtIndex(indexPath.row)
            
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
        deleteAction.backgroundColor = UIColor(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0, alpha: 1.0)
        return [deleteAction, shareAction];
    }
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
        
        
    }
    
    
}
