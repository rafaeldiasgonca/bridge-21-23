//
//  ProtocolDelegateViewController.swift
//  Bridge 21-23
//
//  Created by Rafael Dias Gonçalves on 23/09/21.
//

import UIKit




class ProtocolDelegateViewController: UIViewController {
  
    

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        var delegate: SendDataProtocol? = nil
        super.viewDidLoad()
       
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "getDataSegue" {
              let secondVC: AnotherViewController = segue.destination as! AnotherViewController
              secondVC.sendaDataProtocolDelegate = self
          }
      }


}

extension ProtocolDelegateViewController: SendDataProtocol{
    func sendDataToProtocolDelegateViewController(name: String) {
        label.text = name
    }
    
    
}
