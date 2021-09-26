//
//  ViewController.swift
//  testRxSwift
//
//  Created by HiroakiSaito on 2021/09/26.
//

import UIKit
import RxSwift
import RxCocoa



class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var Label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextField1.rx.text
            .map {"\($0!)"}
            .bind(to: Label1.rx.text)
            .disposed(by: disposeBag)
        
    }


}

