//
//  ProtocolDelegateViewController.swift
//  Bridge 21-23
//
//  Created by Rafael Dias Gonçalves on 23/09/21.
//

import UIKit


protocol SendDataProtocol{
    func sendDataAnotherViewController()

}


class ProtocolDelegateViewController: UIViewController,SendDataProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

  

}
