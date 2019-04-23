//
//  KeyValueModel.swift
//  MS_FormControls
//
//  Created by Manoj Shrestha on 4/9/19.
//

import Foundation
public class KeyValueModel
{
    var key = Int()
    var value = String()
    var isSelected : Bool = false
    
    public init(key: Int, value: String, isSelected: Bool = false)
    {
        self.key = key
        self.value = value
        self.isSelected = isSelected
    }
}
