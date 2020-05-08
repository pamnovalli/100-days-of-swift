//
//  DetailViewController.swift
//  project-sixteen
//
//  Created by Pamela Ianovalli on 07/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    var city: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissModal))
    }
    override func viewDidAppear(_ animated: Bool) {
        guard let cityName = city else { return }
        guard let url = URL(string: "https://en.wikipedia.org/wiki\(cityName)") else { return }
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    @objc func dismissModal() {
        self.dismiss(animated: true, completion: nil)
    }
}
