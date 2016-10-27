//
//  BoardsViewController.swift
//  Threader
//
//  Created by Gonzalo Caballero on 10/27/16.
//  Copyright © 2016 Gonzalo. All rights reserved.
//

import UIKit

class BoardsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var texto = ""
    
    @IBAction func addBoard(_ sender: AnyObject) {
        
        var inputTextField: UITextField!
        
        let actionSheetController: UIAlertController = UIAlertController(title: "Add Board", message: "", preferredStyle: .alert)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
            //Do some stuff
        }
        let nextAction: UIAlertAction = UIAlertAction(title: "Add", style: .default) { action -> Void in
            //Do some other stuff
            print(inputTextField.text!)
        }
        
        actionSheetController.addAction(cancelAction)
        actionSheetController.addAction(nextAction)

        actionSheetController.addTextField { textField -> Void in
            // you can use this text field
            inputTextField = textField
            
        }
        
        self.present(actionSheetController, animated: true, completion: nil)
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
