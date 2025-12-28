//
//  ProfileViewModel.swift
//  MovieIsMe_Team1_M
//
//  Created by wasan jayid althagafi on 08/07/1447 AH.
//
import SwiftUI
import Combine

@MainActor
final class ProfileViewModel: ObservableObject {

    @Published var user: User
    @Published var savedMovies: [Movie] = []

    @Published var draftFirstName: String = ""
    @Published var draftLastName: String = ""

    init(user: User = .init(firstName: "Sarah",
                            lastName: "Abdullah",
                            email: "Xxxx234@gmail.com",
                            avatarSystemName: nil)) {
        self.user = user
        syncDraftWithUser()
    }

    var fullName: String { "\(user.firstName) \(user.lastName)" }
    var hasSavedMovies: Bool { !savedMovies.isEmpty }

    func syncDraftWithUser() {
        draftFirstName = user.firstName
        draftLastName  = user.lastName
    }

    func saveEdits() {
        user.firstName = draftFirstName.trimmingCharacters(in: .whitespacesAndNewlines)
        user.lastName  = draftLastName.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    func signOut() {
        print("Signed Out")
    }
}
