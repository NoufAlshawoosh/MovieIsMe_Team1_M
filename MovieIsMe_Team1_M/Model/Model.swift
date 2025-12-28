//
//  Model.swift
//  MovieIsMe_Team1_M
//
//  Created by wasan jayid althagafi on 08/07/1447 AH.
//

import Foundation


struct User: Equatable {
    var firstName: String
    var lastName: String
    var email: String
    var avatarSystemName: String?
}


struct Movie: Identifiable, Equatable {
    let id = UUID()
    let title: String
}


struct AppState {
    var currentUser: User?
    var savedMovies: [Movie] = []
}
