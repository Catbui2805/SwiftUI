//
//  ContentView.swift
//  SwiftUI MVVM Programming with ObservableObject
//
//  Created by Nguyen Tran on 8/2/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var coursesVM = CoursesViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(coursesVM.message)
                ForEach(coursesVM.sourses) { sourse in
                    Text(sourse.name)
                }
            }.navigationBarTitle("Courses")
                .navigationBarItems(trailing: Button(action: {
                    self.coursesVM.fetchCourses()
                }, label: {
                    Text("Fetch Course")
                }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
