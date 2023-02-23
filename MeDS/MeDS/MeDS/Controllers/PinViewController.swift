//
//  PinViewController.swift
//  MeDS
//
//  Created by Tech on 23/02/2023.
//

import UIKit

class PinViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var txtfFour: UITextField!
    @IBOutlet weak var txtfThree: UITextField!
    @IBOutlet weak var txtfTwo: UITextField!
    @IBOutlet weak var txtfOne: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func checkPinCode(){
        if txtfOne.text != "" && txtfTwo.text != "" && txtfThree.text != "" && txtfFour.text != ""{
            let pinCode = txtfOne.text! + txtfTwo.text! + txtfThree.text! + txtfFour.text!
            if pinCode == "1234"{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "MedicationOptionViewController") as! MedicationOptionViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField == txtfOne{
            if textField.text != ""{
                txtfTwo.becomeFirstResponder()
            }
        }
        else if textField == txtfTwo{
            if textField.text != ""{
                txtfThree.becomeFirstResponder()
            }
            
        }
        else if textField == txtfThree{
            if textField.text != ""{
                txtfFour.becomeFirstResponder()
            }
        }
        self.checkPinCode()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.text = ""
        return true
    }
}
