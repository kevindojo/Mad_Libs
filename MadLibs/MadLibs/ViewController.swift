//
//  ViewController.swift
//  MadLibs
//
//  Created by Kevin Pham on 11/7/17.
//  Copyright © 2017 Kevin Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MadLibLabel: UILabel!
    
    
    
    @IBAction func submitButton(_ segue: UIStoryboardSegue) {
        
        let controller = segue.source as! MLViewController
        
        let adjective = controller.adjectiveTextField.text!
        let verb1 = controller.verb1TextField.text!
        let verb2 = controller.verb2TextField.text!
        let noun = controller.nounTextField.text!
        let sentence = "We are having a perfecty \(adjective) time now.  Later we will \(verb1) and \(verb2) in the \(noun)."
        
        MadLibLabel.text = sentence
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        MadLibLabel.text = "..."
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

