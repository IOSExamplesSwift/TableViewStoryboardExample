//
//  AttractionDetailViewController.swift
//  TableViewStory
//
//  Created by Douglas Alexander on 3/16/18.
//  Copyright © 2018 Douglas Alexander. All rights reserved.
//

import UIKit
import WebKit

class AttractionDetailViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var webSite: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
        if let address = webSite,
            let webURL = URL(string: address) {
                let urlRequest = URLRequest(url: webURL)
                webView.load(urlRequest)
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
