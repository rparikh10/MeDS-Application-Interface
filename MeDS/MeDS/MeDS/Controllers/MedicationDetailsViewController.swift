//
//  MadicationDetailsViewController.swift
//  MeDS
//
//  Created by Tech on 23/02/2023.
//

import UIKit

class MadicationDetailsViewController: UIViewController {
    
    @IBOutlet weak var viewDetails: UIView!
    @IBOutlet weak var viewDosage: UIView!
    @IBOutlet weak var viewTime: UIView!
    @IBOutlet weak var viewCycle: UIView!
    @IBOutlet weak var viewPills: UIView!
    @IBOutlet weak var lblType: UILabel!
    var type = 0
    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblType.text = name
        self.viewDetails.layer.cornerRadius = 8
        self.viewDosage.layer.cornerRadius = 8
        self.viewTime.layer.cornerRadius = 8
        self.viewCycle.layer.cornerRadius = 8
        self.viewPills.layer.cornerRadius = 8
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
