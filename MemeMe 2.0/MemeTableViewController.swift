//
//  MemeTableViewController.swift
//  MemeMe 2.0
//
//  Created by Phillip Crawford on 5/9/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import UIKit

class MemeTableViewController: UIViewController {
    
    var memes: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    
}

