//
//  moviecn.swift
//  MyMovie2
//
//  Created by Nedaa on 28/12/2025.
//

import SwiftUI

struct MovieCenterView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text("Movies Center")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        //هنا لصفة وسن تكملها
                        Spacer()
                        NavigationLink(destination: ProfileView()) {
                            Image("p")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("Search for Movie name, actors...")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                        
                    }} .background(Color.black.edgesIgnoringSafeArea(.all))}}
}

#Preview {
    MovieCenterView()
}
