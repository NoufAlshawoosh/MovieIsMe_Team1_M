//
//  MovieDetailsView.swift
//  MovieIsMe_Team1_M
//
//  Created by Nouf Alshawoosh on 28/12/2025.
//
import SwiftUI

struct MovieDetailsView: View {
    var body: some View {
        
        NavigationStack {
                
                ZStack {
                    
                    Color.black.ignoresSafeArea()
                    
                    VStack {
                        
                        ScrollView {
                            
                            BackgroundMovieImage()
                            
                            MovieDetails()
                            
                            Spacer().frame(height: 1)
                            
                            Divider()
                                .frame(height: 0.1)
                                .overlay(Color.gray)
                                .padding(.horizontal)
                            
                            Spacer().frame(height: 29)
                            
                            // -----------------------------
                                
                                
                            // -----------------------------
                                
                            
                        }.ignoresSafeArea(edges: [.top, .trailing, .leading]) // end of ScrollView
                                                
                        
                    } // end of VStack
                    
                                        
                } // end of ZStack
                            
            
        } // end of NavigationStack
        
    }
    
}

struct BackgroundMovieImage: View {
    var body: some View {
        Image("DetailView_ImageTemp")
            .resizable()
            .scaledToFit()
            .overlay {
                LinearGradient(colors: [.clear, .black.opacity(0.65), .black], startPoint: .center, endPoint: .bottom)
            }
    }
}

struct MovieDetails: View {
    var body: some View {
        VStack(alignment: .leading) {
                Text("Shawshank")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(alignment: .leading)
                
                Spacer().frame(height: 39)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Duration")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Spacer().frame(height: 8)
                        
                        Text("2 hours 22 mins")
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                            .foregroundStyle(.gray)
                        
                    }
                    
                    Spacer().frame(width: 119)
                    
                    VStack(alignment: .leading) {
                        Text("Language")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Spacer().frame(height: 8)
                        
                        Text("English")
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                            .foregroundStyle(.gray)
                        
                    }
                }
            
            Spacer().frame(height: 30)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Genre")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Spacer().frame(height: 8)
                    
                    Text("Drama")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundStyle(.gray)
                    
                }
                
                Spacer().frame(width: 174)
                
                VStack(alignment: .leading) {
                    Text("Age")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Spacer().frame(height: 8)
                    
                    Text("+15")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundStyle(.gray)
                    
                    
                } // end of VStack
            } // end of HStack
            
            Spacer().frame(height: 25)
            
            Text("Story")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Spacer().frame(height: 8)
            
            Text("Synopsis. In 1947, Andy Dufresne (Tim Robbins), a banker in Maine, is convicted of murdering his wife and her lover, a golf pro. Since the state of Maine has no death penalty, he is given two consecutive life sentences and sent to the notoriously harsh Shawshank Prison.\n")
                .font(.system(size: 15))
                .fontWeight(.medium)
                .foregroundStyle(.gray)
            
            Spacer().frame(height: 16)
            
            Text("IMDb Rating")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Spacer().frame(height: 8)
            
            Text("9.3 / 10\n")
                .font(.system(size: 15))
                .fontWeight(.medium)
                .foregroundStyle(.gray)
            
                
        }.frame(width: 390, height: .infinity, alignment: .leading)
            
            
    }
}

#Preview {
    MovieDetailsView()
}
