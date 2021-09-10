//
//  ClassicStorage.swift
//  Think
//
//  Created by Timur Kaldybek on 29.07.2021.
//

import Foundation

class ClassicStorage {
    var list = [Storage]()
    init(){
        list.append(Storage(text: "aaa", isFavorite: false))
        list.append(Storage(text: "bbb", isFavorite: false))
        list.append(Storage(text: "ccc", isFavorite: false))
        list.append(Storage(text: "ddd", isFavorite: false))
        list.append(Storage(text: "eee", isFavorite: false))
        list.append(Storage(text: "fff", isFavorite: false))
        list.append(Storage(text: "ggg", isFavorite: false))
        list.append(Storage(text: "hhh", isFavorite: false))
        list.append(Storage(text: "iii", isFavorite: false))
        list.append(Storage(text: "Be fearless.", isFavorite: false))
    }
}
