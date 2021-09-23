//
//  File.swift
//  Bridge 21-23
//
//  Created by Rafael Dias Gonçalves on 21/09/21.
//

import Foundation
import Combine

class ViewModel {
    
    func fetchFruits() -> Future<[String], Error> {
        
        return Future { promisse in
            DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                promisse(.success(["banana","uva","pera","abacaxi","jabuticaba"]))
            }
        }
        
    }
}
