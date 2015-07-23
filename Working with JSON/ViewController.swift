//
//  ViewController.swift
//  Working with JSON
//
//  Created by Brad Gray on 7/22/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
let urlPath = "http://www.telize.com/geoip"
        let url = NSURL(string: urlPath)
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!, completionHandler: {data, response, error -> Void in
            
            if error != nil {
                println(error)
            } else {
                var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
                println(jsonResult["region_code"])
               
                
            }
            
            
            
            
            
            
            
            
        })
    task.resume()
    

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

