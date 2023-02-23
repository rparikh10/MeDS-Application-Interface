//
//  WelcomeViewController.swift
//  MeDS
//
//  Created by Tech on 23/02/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var btnConnect: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnConnect.layer.cornerRadius = 8

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionConnect(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PinViewController") as! PinViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
