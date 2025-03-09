//
//  ViewController.swift
//  A3_IOS
//
//  Created by Akhilesh Bitla on 3/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func profileButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ProfileSegue", sender: self)
    }
    
}

