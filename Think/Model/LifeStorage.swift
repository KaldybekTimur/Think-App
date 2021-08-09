//
//  LifeStorage.swift
//  Think
//
//  Created by Timur Kaldybek on 31.07.2021.
//

import Foundation

class LifeStorage {
    var list = [Storage]()
    init(){
        list.append(Storage(text: "111", isFavorite: false))
        list.append(Storage(text: "222", isFavorite: false))
        list.append(Storage(text: "333", isFavorite: false))
        list.append(Storage(text: "444", isFavorite: false))
    }
}
