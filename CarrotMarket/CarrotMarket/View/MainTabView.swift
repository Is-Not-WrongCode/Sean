//
//  MainTabView.swift
//  CarrotMarket
//
//  Created by BAE on 2023/06/19.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Label("홈", image: "symbol_home")
                }
//                .tint(.black)
            LocalLifeView()
                .tabItem {
                    Label("동네생활", image: "symbol_local")
                }
            NearMeView()
                .tabItem {
                    Label("내 근처", image: "symbol_near")
                }
            ChatView()
                .tabItem {
                    Label("채팅", image: "symbol_chat")
                }
            MyCarrotView()
                .tabItem {
                    Label("나의 당근", image: "symbol_my")
                }
        }// TabView
    }// body
}// MainTabView

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
