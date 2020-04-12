//
//  ViewController.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 09/04/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var petitions = [Petition]()
    var filterPetitions = [Petition]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Credits", style: .done, target: self, action: #selector(showAboutApi))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchPetitions))
        let urlString: String
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString =  "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        if let url = URL(string: urlString){
            if let data = try? Data(contentsOf: url){
                parse(json: data)
                return
            }
        }
        showError()
        
    }
    
    func showError() {
        let ac = UIAlertController(title: "Loading error", message: "There was a problem loading the feed; please check your connection", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "ok", style: .default))
        present(ac, animated:  true)
    }
    
    @objc func searchPetitions() {
        let ac = UIAlertController(title: "Enter Petitions", message: nil, preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Search", style: .default) { [weak self, weak ac] action in
            guard let petition = ac?.textFields?[0].text else {return}
            self?.search(petition: petition)
        }
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    func search(petition: String) {
        for i in petitions{
            if i.title == petition {
                filterPetitions.append(i)
                petitions = filterPetitions
                tableView.reloadData()
            }
        }
    }

    @objc func showAboutApi() {
        let ac = UIAlertController(title: "About Api", message: "The data comes from the We The People API of the Whitehouse.", preferredStyle: .alert)
        let submitAction = UIAlertAction(title: "Ok", style: .default)
        ac.addAction(submitAction)
        present(ac, animated: true)
        
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results
            print(petitions)
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let petition = petitions[indexPath.row]
        cell.textLabel?.text = petition.title
        cell.detailTextLabel?.text = petition.body
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

