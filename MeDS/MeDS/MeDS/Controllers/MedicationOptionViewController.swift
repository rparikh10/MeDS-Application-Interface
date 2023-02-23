//
//  MadicationOptionViewController.swift
//  MeDS
//
//  Created by Tech on 23/02/2023.
//

import UIKit

class MadicationOptionViewController: UIViewController {

    @IBOutlet weak var btnNurtec: UIButton!
    @IBOutlet weak var btnAmoxicillin: UIButton!
    @IBOutlet weak var btnAdderall: UIButton!
    @IBOutlet weak var btnAdvil: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnNurtec.layer.cornerRadius = 8
        self.btnAmoxicillin.layer.cornerRadius = 8
        self.btnAdderall.layer.cornerRadius = 8
        self.btnAdvil.layer.cornerRadius = 8
    }
   
    func moveToDetails(type : Int , name : String){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MedicationDetailsViewController") as! MedicationDetailsViewController
        vc.name = name
        vc.type = type
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func actionAdvil(_ sender: Any) {
        self.moveToDetails(type: 1, name: "Advil")
    }
    
    @IBAction func actionAdderall(_ sender: Any) {
        self.moveToDetails(type: 2, name: "Adderall")
    }
    
    @IBAction func actionAmoxicillin(_ sender: Any) {
        self.moveToDetails(type: 3, name: "Amoxicillin")
    }
    
    @IBAction func actionNurtec(_ sender: Any) {
        self.moveToDetails(type: 4, name: "Nurtec")
    }
}
