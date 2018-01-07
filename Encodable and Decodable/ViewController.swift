//
//  ViewController.swift
//  Encodable and Decodable
//
//  Created by Lucas Caron Albarello on 07/01/2018.
//  Copyright © 2018 Lucas Caron Albarello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func enviarPost(_ sender: UIButton) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            
        }
        let session = URLSession.shared
    }
    @IBAction func getUsuarios(_ sender: UIButton) {
        
    }
    
    


}

