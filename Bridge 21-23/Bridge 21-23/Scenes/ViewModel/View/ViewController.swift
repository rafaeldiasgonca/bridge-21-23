//
//  ViewController.swift
//  Bridge 21-23
//
//  Created by Rafael Dias Gonçalves on 20/09/21.
//

import UIKit
import Combine


class myCustomTableViewCell:UITableViewCell{
    
}
class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    // MARK: - Variables
    let viewModel = ViewModel()
    var model = [String]()
    var observer:AnyCancellable?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(myCustomTableViewCell.self, forCellReuseIdentifier: "cell")
       observer = viewModel.fetchFruits()
        .receive(on:DispatchQueue.main)
        .sink { completion in
            switch completion{
            case .failure(let error):
            print(error)
            
            case .finished:
            print("You succefuly call it")
            }
        } receiveValue: { result in
            print(result.count)
            self.model = result
            self.tableView.reloadData()
        }

    }


}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as? myCustomTableViewCell else {
            fatalError()
            
        }
        cell.textLabel?.text = model[indexPath.row]
        return cell
    }
    
    
    
}

