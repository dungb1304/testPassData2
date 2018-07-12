//
//  ViewController.swift
//  testPassData2
//
//  Created by DungB96 on 2018/05/23.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SecondViewController{
            viewController.textField = inputField.text
        }
    }
    
    
    
   @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let viewController = unwindSegue.source as? SecondViewController
        inputField.text = viewController?.textField
    }
    

    
}

