//
//  PoemView.swift
//  leavesOfGrass
//
//  Created by Julia on 10/8/16.
//  Copyright © 2016 JuliaGeist. All rights reserved.
//

import UIKit

class PoemView: UIView {

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var nameOfPoemTextView: UITextView!
    
    @IBOutlet weak var poemTextView: UITextView!
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup () {
        view = loadViewFromNib()
        view.frame = self.bounds
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "PoemView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }


}
