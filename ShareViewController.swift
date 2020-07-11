//
//  ShareViewController.swift
//  Swift5Bokete1
//
//  Created by watar on 2020/07/11.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    
    var resultImage = UIImage()
    var commentString = String()
    var screenShotImage = UIImage()
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultImageView.image = resultImage
        commentLabel.text = commentString
        commentLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    @IBAction func share(_ sender: Any) {
        // take a screenShot
        
        // share with activity view
        
        
    }
    
    func takeScreenShot()
    {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
