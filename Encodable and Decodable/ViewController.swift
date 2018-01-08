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
        let postDictionary = ["userId":"55", "id":"126", "title":"Hey they", "body":"What are you doing?"]
        let newPost = Post(corpo: <#T##String#>, id: <#T##Int#>, titulo: <#T##String#>, usuarioId: <#T##Int#>)
        do{
            let json = try JSONSerialization.data(withJSONObject: postDictionary, options: [])
            request.httpBody = json
        } catch{}
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }catch{}
        }
    task.resume()
    }
    
    @IBAction func getUsuarios(_ sender: UIButton) {
        
    }
    
    


}

