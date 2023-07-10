//
//  ItemModel.swift
//  CarrotMarket
//
//  Created by BAE on 2023/06/19.
//

import Foundation
import SwiftUI

struct ItemModel {
    let thumbnail: String
    let title: String
    let place: String
    let time: String
    let price: String
    let chat: Int
    let wish: Int
}

let sampleData: [ItemModel] = [
    
    ItemModel(thumbnail: "airpod", title: "에어팟 2세대 무선 판매합니다. 쿨거래 환영합니다~", place: "가락동", time: "22분 전", price: "200,000원", chat: 3, wish: 5),
    ItemModel(thumbnail: "ipad", title: "아이패드 미니 6세대 64G 실버 셀룰러+애플펜슬 2세대 팝니다", place: "거여동", time: "끌올 37분 전", price: "700,000원", chat: 1, wish: 2),
    ItemModel(thumbnail: "bike", title: "삼천리 24인치 칼라스 JD DISC 자전거", place: "송파구 오금동", time: "11분 전", price: "200,000원", chat: 0, wish: 9),
    ItemModel(thumbnail: "carrier", title: "이민 가방 캐리어", place: "문정동", time: "3시간 전", price: "20,000원", chat: 11, wish: 11),
    ItemModel(thumbnail: "clothes", title: "66걸즈 스티치셔츠+와이드슬렉스 SET", place: "가락2동", time: "끌올 26초 전", price: "25,000원", chat: 0, wish: 23),
    ItemModel(thumbnail: "iphone14", title: "아이폰 14 프로 128 딤퍼플 배터리 100% 급처합니다", place: "가락동", time: "끌올 2분 전", price: "119만원", chat: 1, wish: 4),
    ItemModel(thumbnail: "haircutModel", title: "헤어 커트모델구합니다💗", place: "동네", time: "시간", price: "200,000원", chat: 0, wish: 0)
    
]

