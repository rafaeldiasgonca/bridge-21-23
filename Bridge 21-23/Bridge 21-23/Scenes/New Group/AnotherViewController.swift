//
//  AnotherViewController.swift
//  Bridge 21-23
//
//  Created by Rafael Dias Gonçalves on 23/09/21.
//

import UIKit

protocol SendDataProtocol{
    func sendDataToProtocolDelegateViewController(name:String)

}


class AnotherViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var sendaDataProtocolDelegate:SendDataProtocol? = nil
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
       
      
    }
    @IBAction func textFieldDidEndEditing(_ sender: Any) {
        
        
    }
    
    @IBAction func sendData(_ sender: Any) {
        
        if self.sendaDataProtocolDelegate != nil && textField.text != nil{
            self.sendaDataProtocolDelegate?.sendDataToProtocolDelegateViewController(name: textField.text!)
            dismiss(animated: true, completion: nil)
        }
    }
    
    

}
extension AnotherViewController: SendDataProtocol{
    func sendDataToProtocolDelegateViewController(name: String) {
        
    }
    
    
    
}
