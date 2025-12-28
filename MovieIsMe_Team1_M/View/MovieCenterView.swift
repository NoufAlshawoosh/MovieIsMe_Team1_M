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
                        
                        Spacer()}}} .background(Color.black.edgesIgnoringSafeArea(.all))}}
}

#Preview {
    MovieCenterView()
}
