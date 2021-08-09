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
        list.append(Storage(text: "Счастье находят или создают", isFavorite: false))
        list.append(Storage(text: "А что такое семья? Это те люди, которым ты нужен. В радости и горе, в мелочах или целом, они приходят в нужную минуту и остаются с тобой, несмотря ни на что", isFavorite: false))
        list.append(Storage(text: "Молодость моя ты так прекрасна.", isFavorite: false))
        list.append(Storage(text: "Be attentive but relaxed", isFavorite: false))
        list.append(Storage(text: "Брак - это объединение людей, которое должно длиться всю жизнь.", isFavorite: false))
        list.append(Storage(text: "Все, что происходит с тобой вокруг-это и есть жизнь. Живи.", isFavorite: false))
        list.append(Storage(text: "Ты получаешь не то, что заслуживаешь, а то что берёшь.", isFavorite: false))
        list.append(Storage(text: "Жизнь слишком коротка чтобы скрывать чувства", isFavorite: false))
        list.append(Storage(text: "Ваше благополучие зависит от ваших собственных решений ", isFavorite: false))
        list.append(Storage(text: "Ты на этой земле всего лишь раз.", isFavorite: false))
        list.append(Storage(text: "Be fearless.", isFavorite: false))
    }
}
