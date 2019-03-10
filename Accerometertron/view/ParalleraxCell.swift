//
//  ParalleraxCell.swift
//  Accerometertron
//
//  Created by Admin on 3/9/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class ParalleraxCell: UITableViewCell {
    @IBOutlet weak var itemImage:UIImageView!
    @IBOutlet weak var itemDescription:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setParallex()
    }
    
    func setupoutlet(forDescription desc:String  , AndImageName image :UIImage  )
    {
        itemImage.image=image
        itemDescription.text=desc
    }
    
    func setParallex(){
        let min = CGFloat(-50)
        let max = CGFloat(50)
        
        let xMotion = UIInterpolatingMotionEffect.init(keyPath: "leyer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect.init(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let mEffectGroup = UIMotionEffectGroup()
        mEffectGroup.motionEffects = [xMotion , yMotion]
        
        itemImage.addMotionEffect(mEffectGroup)
        
    }
 

}
