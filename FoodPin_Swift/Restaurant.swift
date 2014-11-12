//
//  Restaurant.swift
//  FoodPin_Swift
//
//  Created by Anuj Katiyal on 12/11/14.
//  Copyright (c) 2014 Anuj Katiyal. All rights reserved.
//

import Foundation

class Restaurant {
    var name:String = ""
    var type:String = ""
    var location:String = ""
    var image:String = ""
    var isVisited:Bool = false
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool){
        self.name = name;
        self.type = type;
        self.location = location;
        self.image = image;
        self.isVisited = isVisited;
        
    }
}
