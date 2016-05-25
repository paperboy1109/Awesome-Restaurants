//
//  ViewController.swift
//  Awesome Restaurants
//
//  Created by Daniel J Janiak on 5/25/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var goodRestaurants = ["http://d3lawkbdj6aabd.cloudfront.net/singleplatform/image/upload/c_fit/bd3a417823a519e74d152ade131c67c90495a4c9.jpg", "https://res.cloudinary.com/roadtrippers/image/upload/c_fill,h_316,w_520/v1370450022/oco-time-5199107a54b9724df10043eb.jpg", "https://threebestrated.com/images/HimalayanCafeGrill-SantaRosa-CA.jpeg"]
    
    var restaurantTitles = ["Mario's", "Oco Time", "Indian Food"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("restaurantCell") as? RestaurantCell {
            
            var img: UIImage!
            
            let url = NSURL(string: goodRestaurants[indexPath.row])!
            
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "mystery")
            }
            
            cell.configureCell(img, text: restaurantTitles[indexPath.row])
            
            return cell
        } else {
            return RestaurantCell()
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goodRestaurants.count
    }



}

