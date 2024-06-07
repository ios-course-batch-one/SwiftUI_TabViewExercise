//
//  HomeView.swift
//  Onboarding Screen
//
//  Created by Ko  Linn on R 6/06/07.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack (spacing:30){
                Text("Home View")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30).bold())
                    .padding(.top, 30)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            }
            
            
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("X")
                        .font(.title)
                        .foregroundStyle(.black)
                })
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .foregroundColor(.gray)
                )
            }
            .padding()
        }
       
       
    }
}

#Preview {
    HomeView()
}
