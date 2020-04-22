//
//  NationalFlagsTableViewController.swift
//  chalenge-day-23
//
//  Created by Pamela Ianovalli on 28/03/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class NationalFlagsTableViewController: UITableViewController {
    
    var nationalFlags: [String: UIImage] = [
        "Germany": UIImage(named: "germany.png")!,
        "Ireland": UIImage(named: "ireland.png")!,
        "Italy": UIImage(named: "italy.png")!,
        "Monaco": UIImage(named: "monaco.png")!
       
    ]
    
    let cellSpacingHeight: CGFloat = 10


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "National Flags"

    }

    // MARK: - Table view data source
    
    
    
    // Set the spacing between sections
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return nationalFlags.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.imageView?.image = nationalFlags[Array(nationalFlags.keys)[indexPath.section]]
        cell.textLabel?.text = Array(nationalFlags.keys)[indexPath.section]
        
        cell.backgroundColor = UIColor.init(red: 242/255.0, green: 242/255.0, blue: 242/255.0, alpha: 1.0)
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.9
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        cell.textLabel!.textColor = UIColor.black
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? ViewController {
            vc.image = nationalFlags[Array(nationalFlags.keys)[indexPath.row]]
            vc.imageName = Array(nationalFlags.keys)[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }

   
}
