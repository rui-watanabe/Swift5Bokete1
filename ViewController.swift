//
//  ViewController.swift
//  Swift5Bokete1
//
//  Created by watar on 2020/07/11.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SDWebImage
import Photos

class ViewController: UIViewController {

    @IBOutlet weak var themeImageView: UIImageView!
    
    @IBOutlet weak var commentTextView: UITextView!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentTextView.layer.cornerRadius = 20.0
        
        PHPhotoLibrary.requestAuthorization{(states) in
            switch(states)
            {
                case .authorized:
                    break
                case .denied:
                    break
                case .notDetermined:
                    break
                case .restricted:
                    break
            }
        }
    }
    
    //get some values based on search word(pixabay.com)
    func getImages(keyword: String) {
        //APIKEY
        
        let url = "https://pixabay.com/api/?key=&q=\(keyword)"
        
        //throw http request with Alamofire
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON{ (response) in
            switch(response.result)
            {
                case .success:
                    let json:JSON = JSON(response.data as Any)
                
                    let imageString = json["hits"]
                
                case .failure(let error):
                    print(error)
            }
        }
        
        //analayze JSON
        //pasted imageView.image
        
    }
    
}
