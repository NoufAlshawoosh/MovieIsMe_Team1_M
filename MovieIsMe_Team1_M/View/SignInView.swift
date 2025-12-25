//
//  SignInView.swift
//  MovieIsMe_Team1_M
//
//  Created by Nedaa on 25/12/2025.

//
//  SignInView.swift
//
//  Created by Nedaa on 24/12/2025.
//
import SwiftUI
#Preview {
    SignInView()
}
struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            Image("SignIn")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(
                    LinearGradient(
                        colors: [.black.opacity(1.6), .clear],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
          
        }
    }
}
