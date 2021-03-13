//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Bruno Silva on 12/03/21.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    //MARK: - Variaveis
    let disposeBag = DisposeBag()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider.rx.value.subscribe(onNext: { myValue in
            self.label.text = "\(myValue)"
        }).disposed(by: disposeBag)
    }
}

