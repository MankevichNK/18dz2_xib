//
//  RoundedView.swift
//  18dz2_xib
//
//  Created by Пользователь on 3/24/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    @IBOutlet var contentView: UIView!
    
    var clickHandler: (() -> Void)?
    
    @IBAction func redButton(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.backgroundColor = .systemRed
        }
        
        clickHandler?()
        
    }
    @IBAction func greenButton(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.backgroundColor = .systemGreen
        }
        clickHandler?()
    }
    @IBAction func blueButton(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.backgroundColor = .systemBlue
        }
        clickHandler?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit(){
        Bundle.main.loadNibNamed("RoundedView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.backgroundColor = .clear
    }
}
