//
//  CoursesModel.swift
//  SwiftUI MVVM Programming with ObservableObject
//
//  Created by Nguyen Tran on 8/2/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation

struct CoursesModel: Identifiable, Decodable {
    let id = UUID()
    let name: String
    
}
