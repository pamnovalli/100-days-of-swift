//
//  NotesListTableViewController.swift
//  ios-notes-app
//
//  Created by Pamela Ianovalli on 20/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class NotesListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var btnNewFolder: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    private var notes = [NotesModel]()
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        if let notesBackup = defaults.object(forKey: "notes") as? Data {
            if let decodedNotes = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(notesBackup) as? [NotesModel] {
                notes = decodedNotes
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        save()
    }
    
    func save() {
        if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: notes, requiringSecureCoding: false) {
            defaults.set(savedData, forKey: "notes")
        }
    }

    // MARK: - Table view data source

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = notes[indexPath.row].name
        cell.imageView?.image = UIImage.init(systemName: "folder")
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    @IBAction func addNewFolder(_ sender: Any) {
        let alert = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Name"
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { [weak self] (action)  in
            guard let textField = alert.textFields?.first, let text = textField.text else { return }
            let notes = NotesModel.init(name: text, text: "")
            self?.notes.append(notes)
            self?.tableView.reloadData()
        }))
        present(alert, animated: true)
    }
    
}
