//
//  ReadShortcutHeaderView.swift
//  HappyAnding
//
//  Created by KiWoong Hong on 2022/10/24.
//

import SwiftUI

struct ReadShortcutHeaderView: View {
    
    @State var shortcut: Shortcuts
//    let icon: String
//    let color: String
//    let numberOfLike: Int
//    let name: String
//    let oneline: String
    
//    @State var numberOfLike: Int
    @State var isMyLike: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Image(systemName: shortcut.sfSymbol)
                        .Title2()
                        .foregroundColor(Color.White)
                }
                .frame(width: 52, height: 52)
                .background(Color.fetchGradient(color: shortcut.color))
                .cornerRadius(8)
                
                Spacer()
                
                Text("\(isMyLike ? Image(systemName: "hand.thumbsup.fill") : Image(systemName: "hand.thumbsup")) \(shortcut.numberOfLike)")

                .Body2()
                .padding(10)
                .foregroundColor(isMyLike ? Color.White : Color.Gray4)
                .background(isMyLike ? Color.Primary : Color.Gray1)
                .cornerRadius(12)
                .onTapGesture(perform: {
                    isMyLike.toggle()
                    if isMyLike {
                        self.shortcut.numberOfLike += 1
                    } else {
                        self.shortcut.numberOfLike -= 1
                    }
                    // TODO: 추후 좋아요 데이터구조에 목록(?) 추가, 취소 기능 추가할 곳
                })
            }
            Text("\(shortcut.title)")
                .Title1()
                .foregroundColor(Color.Gray5)
            Text("\(shortcut.subtitle)")
                .Body1()
                .foregroundColor(Color.Gray3)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
    }
}


//struct ReadShortcutHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReadShortcutHeaderView(icon: "book", color: "Coral", numberOfLike: 99, name: "주변 커피집 걸어가기", oneline: "걸어가보자!!!")
//    }
//}
