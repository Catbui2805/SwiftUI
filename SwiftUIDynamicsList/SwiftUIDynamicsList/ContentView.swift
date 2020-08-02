//
//  ContentView.swift
//  SwiftUIDynamicsList
//
//  Created by Nguyen Tran on 8/2/20.
//  Copyright © 2020 Nguyen Tran. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    let id: Int
    let name: String
    let message: String
    let image: String
}

struct ContentView: View {
    
    let users: [User] = [
        .init(id: 0, name: "Ho Chi Minh", message: "Bác nhắc nhở: “Muốn tiến bộ mãi thì phải học tập. Học trong sách báo, học trong công tác, học với anh em, học hỏi quần chúng. Học tập để phát triển ưu điểm, sửa chữa khuyết điểm” (1). Bằng tấm gương học tập suốt đời, Bác đã để lại nhiều bài học và những chỉ dẫn quý báu, trong đó có những nội dung rất cơ bản mà chúng ta cần học tập và noi theo.", image: "hcm"),
        .init(id: 1, name: "Le Duan", message: "Lê Duẩn (1907–1986) là Bí thư Thứ nhất Trung ương Đảng Lao động Việt Nam từ 1960 đến 1976, Tổng Bí thư Đảng Cộng sản Việt Nam từ 1976 đến 1986. Ông là Tổng Bí thư của Đảng Cộng sản Việt Nam có tổng thời gian tại vị lâu nhất với 25 năm, 303 ngày. ", image: "ld"),
        .init(id: 2, name: "Vo Nguyen Giap", message: " Võ Nguyên Giáp Võ Nguyên Giáp 1954.png Chân dung được phục dựng của Tổng Tư lệnh Võ Nguyên Giáp, được chụp vào năm 1954 Chức vụ Tổng Tư lệnh Quân đội nhân dân Việt Nam Nhiệm kỳ    2 tháng 3 năm 1946 – 30 tháng 4 năm 1975 29 năm, 59 ngày Tiền nhiệm    Chức vụ thành lập Kế nhiệm    Tôn Đức Thắng Vị trí    Flag of North Vietnam (1945-1955).", image: "vng")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Text("User").font(.largeTitle)
                ForEach(users, id: \.id) { user in
                    UserRow(user: user)
                }
            }.navigationBarTitle(Text("Dynamic List"))
        }
    }
}

struct UserRow: View {
    let user: User
    
    var body: some View {
        HStack {
            Image(user.image)
                .resizable()
            .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .frame(width: 70, height: 70, alignment: .center)
                
            VStack (alignment: .leading) {
                Text(user.name).font(.headline)
                Text(user.message).font(.subheadline).lineLimit(nil)
            }.padding(.leading, 8)
        }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
