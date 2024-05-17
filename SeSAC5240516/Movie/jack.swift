//
//  MovieViewController.swift
//  SeSAC5240516
//
//  Created by jack on 5/16/24.
//

import UIKit

class MovieViewController: UIViewController {

    //@: Swift Attribute
    //Interface Builder
    //아웃렛 변수 vs @IBAction
    //아웃렛이나 액션 연결이 끊겼을 때 해결 방법은 꼭 알고 넘어가기
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var randomButton: UIButton!
    
    let bigNumber = Int.random(in: 1...300)
    
    //뷰컨트롤러의 생명주기
    //viewDidLoad: 화면이 사용자의 눈에 보이기 직전에 실행되는 기능.
    //그림자, 모서리 둥글기 등 스토리보드에서 할 수 없는 UI를 작성하는 편!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "고려거란전쟁"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .blue
        titleLabel.backgroundColor = .yellow
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        //iOS17, Asset Catalog
        posterImageView.image = UIImage(named: "고려거란전쟁")
        //UIImage(systemName: "star")
        //UIImage(named: "고려거란전쟁")
        posterImageView.backgroundColor = .yellow
        posterImageView.contentMode = .scaleAspectFill
        posterImageView.layer.cornerRadius = 20
        posterImageView.layer.borderWidth = 3
        posterImageView.layer.borderColor = UIColor.magenta.cgColor
        
        randomButton.setTitle("랜덤 추천", for: .normal)
        randomButton.setTitle("얼른 확인해보세요", for: .highlighted)
        randomButton.setTitleColor(.red, for: .normal)
        randomButton.setTitleColor(.blue, for: .highlighted)
        randomButton.backgroundColor = .yellow
    }
    
    @IBAction func randomButtonTapped(_ sender: UIButton) {
        print("버튼 클릭됨")
        let number = Int.random(in: 1...300)
        titleLabel.text = "마스크걸: \(number), \(bigNumber)"
        posterImageView.image = UIImage(named: "마스크걸")
    }
    
}
