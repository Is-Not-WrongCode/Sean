//
//  HomeTabView.swift
//  CarrotMarket
//
//  Created by BAE on 2023/06/19.
//

import SwiftUI

struct HomeTabView: View {
    
    var options = ["개신동", "지곡동", "내 동네 설정하기"]
    @State private var selectionOption = 0
    
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<sampleData.count) { item in
                    ItemView(item: sampleData[item])
                        .listRowInsets(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                    //                        .listRowSeparator(.visible)
                        .alignmentGuide(
                            .listRowSeparatorTrailing
                        ) { dimensions in
                            dimensions[.trailing]
                        }
                        .alignmentGuide(
                            .listRowSeparatorLeading
                        ) { dimensions in
                            dimensions[.leading]
                        }
                }
//                ItemView()
//                ItemView()
//                ItemView()
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 10) {
                        Button(action: {
                            //TODO
                        }){
                            Image("symbol_search")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                        Button(action: {
                            //TODO
                        }){
                            Image("symbol_menu")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                        Button(action: {
                            //TODO
                        }){
                            Image("symbol_noti")
                                .resizable()
                                .frame(width: 24, height: 24)
//                                .border(.blue)
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Picker("Select Choice", selection: $selectionOption) {
                        ForEach(0 ..< options.count) {
                            Text(options[$0])
                                .font(.system(size:20))
                                .bold()
                        }
                    } // Picker
                    .tint(.primary)
                }// ToolbarItem
            }
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}

struct ItemView: View {
    var item: ItemModel
    let fontSize1: CGFloat = 16
    let fontSize2: CGFloat = 13
    let lineHeight1 = 21.6
    let lineHeight2 = 19.5
    
    var body: some View{
        HStack(alignment: .top, spacing: 0) {
            Image(item.thumbnail)
                .resizable()
                .frame(width: 108, height: 108)
                .padding(.bottom, 2)
            
            VStack(alignment: .leading, spacing: 2){
                Text(item.title)
                    .font(.system(size: fontSize1, weight: .regular))
                    .lineLimit(3)
                    .allowsTightening(true)
//                    .lineSpacing(fontSize1 * 0.35)
                    .padding(.vertical, (lineHeight1 - fontSize1) / 2)
                    .border(.blue)
                Text(item.place+" ∙ "+item.time)
                    .font(.system(size:fontSize2))
                    .foregroundColor(.secondary)
                    .padding(.vertical, (lineHeight2 - fontSize2) / 2)
                    .border(.blue)
                Text(item.price)
                    .font(.system(size: fontSize1, weight: .bold))
                    .bold()
                    .padding(.vertical, (lineHeight1 - fontSize1) / 2)
                    .border(.blue)
                Spacer()
                HStack(alignment: .bottom, spacing: 0) {
                    Spacer()
                    if (item.chat != 0) {
                        Image("symbol_chat")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .symbolRenderingMode(.multicolor)
                            .foregroundColor(.red)
                            .background(.red)
                        Text(String(item.chat))
                            .font(.system(size:fontSize2))
                    }
                    if (item.wish != 0) {
                        Image("symbol_wish")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(String(item.wish))
                            .font(.system(size:fontSize2))
                    }
                }// HStack
                .padding(.vertical, (lineHeight2 - fontSize2) / 2)
                .border(.blue)
            }// VStack
            .padding(.leading,16)
            .border(.blue)
        }// HStack
        .frame(height: 110)
        .border(.blue)
    }
}
