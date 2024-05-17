//
//  SearchViewController.swift
//  SeSAC5240516
//
//  Created by jack on 5/16/24.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet var resultImageView: UIImageView!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTextField.placeholder = "드라마를 검색해보세요"
        searchTextField.keyboardType = .default
        searchTextField.textColor = .red
        //searchTextField.isSecureTextEntry = true
        
        resultLabel.text = "드라마의 검색 결과 입니다.\n제목은 마스크걸 입니다."
        resultLabel.textAlignment = .center
        resultLabel.numberOfLines = 0
        
        resultImageView.image = UIImage(named: "마스크걸")
        resultImageView.backgroundColor = .brown
        resultImageView.layer.cornerRadius = 125
        resultImageView.contentMode = .scaleAspectFill
    }
    
    @IBAction func textFieldReturnTapped(_ sender: UITextField) {
       
        print("textFieldReturnTapped")
        let word = searchTextField.text!
        resultLabel.text = "\(word)라고 입력했습니다"
    }
}


