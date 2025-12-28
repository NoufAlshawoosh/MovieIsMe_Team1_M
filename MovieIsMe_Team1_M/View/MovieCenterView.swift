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
                    VStack(alignment: .leading, spacing: 10) {
                        Text("High Rated")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        TabView {
                            Image("top")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 450)
                                .clipped()
                                .cornerRadius(15)
                            
                            Image("top")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 450)
                                .clipped()
                                .cornerRadius(15)
                            Image("top")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 450)
                                .clipped()
                                .cornerRadius(15)
                            
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                        .frame(height: 450)
                        .padding(.horizontal)
                    }
                    //صفحات نوف
                       VStack(alignment: .leading, spacing: 10) {
                           HStack {
                               Text("Drama")
                                   .font(.title2)
                                   .fontWeight(.bold)
                                   .foregroundColor(.white)
                               
                               Spacer()
                               
                               Text("Show more")
                                   .foregroundColor(.yellow)
                           }
                           .padding(.horizontal)
                            
                           ScrollView(.horizontal, showsIndicators: false) {
                           HStack(spacing: 15) {
                           NavigationLink(destination: ProfileView()) {
                            Image("d1")
                            .resizable()
                            .scaledToFill()
                          .frame(width: 200, height: 280)
                            .clipped()
                              .cornerRadius(15)
    }
                                                           
                    NavigationLink(destination: ProfileView()) {
                     Image("d2")
              .resizable()
           .scaledToFill()
                  .frame(width: 200, height: 280)
                       .clipped()
                         .cornerRadius(15)
}}
                      .padding(.horizontal) }
                                               }
                        
                    }} .background(Color.black.edgesIgnoringSafeArea(.all))}}
}

#Preview {
    MovieCenterView()
}
