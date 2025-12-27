//
//  SignInView.swift
//  MovieIsMe_Team1_M
//
//  Created by Nedaa on 25/12/2025.
//
import SwiftUI
#Preview {NavigationStack {
    SignInView()
}}
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
            
            VStack(alignment: .leading, spacing: 1){
                VStack(alignment: .leading, spacing: 20) {
                    Spacer().frame(height: 300)
                    //Spacer()
                    Text("Sign In")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("You'll find what you're looking for in the\n ocean of movies")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.white.opacity(0.8))
                    
                }
                
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal, 30)
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Email")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.white.opacity(0.8))

                    TextField("Enter your email", text: $email)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.15))
                        )
                        .foregroundColor(.white)
                        .tint(.white)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal, 30)
                Spacer().frame(height: 10)
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Password")
                        .font(.system(size: 18 , weight: .medium))
                        .foregroundColor(.white.opacity(0.7))
                    
                    SecureField("Enter your password", text: $password)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.15))
                        )
                        .foregroundColor(.white)
                        .tint(.white)
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 30)
                
                Spacer().frame(height: 30)
                
                VStack{
                    NavigationLink {
                        MovieCenterView()
                    } label: {
                        Text("Sign in")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .cornerRadius(14)
                            .background(
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(Color.white.opacity(0.9))
                            )
                    }

                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 30)
            }
        }
    }
}
