//
//  CoursesViewModel.swift
//  SwiftUI MVVM Programming with ObservableObject
//
//  Created by Nguyen Tran on 8/2/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import Foundation

let apiUrl = "https://api.letsbuildthatapp.com/static/courses.json"

class CoursesViewModel: ObservableObject {
    
    @Published var message = "Message inside observable object"
    @Published var sourses: [CoursesModel] = [
        .init(name: "Courses 1"),
        .init(name: "Courses 2"),
        .init(name: "Courses 3")
    ]
    
    func changeMessage() {
        message = "BLAH BLAH BLAH"
    }
    
    func fetchCourses() {
        // fetch json and decode and update some array property
        guard let url = URL(string: apiUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let data = data {
                DispatchQueue.main.async {
                    self.sourses = try! JSONDecoder().decode([CoursesModel].self, from: data)
                }
            }
        }.resume()
    }
}
