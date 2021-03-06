//
//  ItemData.swift
//  Garpix_TestApp
//
//  Created by Владислав on 23.10.2020.
//

import Foundation
import UIKit
import SwiftUI

struct ItemData: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var name: String
    var fileImage: String
    var price: Int
    var discount: Int
    var discountPrice: Int
    var description: String
    var weight: Int
    var country: String
}


