//
//  ViewController.swift
//  chalenge-photos-album
//
//  Created by Pamela Ianovalli on 26/04/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var album = [Album]()
    var defaults = UserDefaults.standard
    var albumBackup = [Album]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPhoto))
        navigationController?.navigationBar.prefersLargeTitles = true
        recoverDataInDefaults()
    }
    
    func recoverDataInDefaults(){
        if let savedAlbum = defaults.object(forKey: "album") as? Data {
            let jsonDecoder = JSONDecoder()
            do {
                album = try jsonDecoder.decode([Album].self, from: savedAlbum)
            } catch {
                print("Failed to load people")
            }
        }
    }
    
    @objc func addNewPhoto() {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        } else {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func save() {
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(album) {
            defaults.set(savedData, forKey: "album")
        } else {
            print("Failed to save people")
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        
        let imageName = UUID().uuidString
        let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)
        
        if let jpegData = image.jpegData(compressionQuality: 0.8) {
            try? jpegData.write(to: imagePath)
        }
        
        let photoAlbum = Album(caption: "Unknown", fileName: imageName)
        album.append(photoAlbum)

        tableView.reloadData()

        dismiss(animated: true)
        save()
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        album.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = album[indexPath.row].caption
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            let path = getDocumentsDirectory().appendingPathComponent(album[indexPath.row].fileName)
            vc.photo = path
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

