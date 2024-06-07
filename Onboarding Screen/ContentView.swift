//
//  ContentView.swift
//  Onboarding Screen
//
//  Created by Ko  Linn on R 6/06/01.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    VStack{
                        Image("work_img1")
                        Text("Welcome to Surf")
                            .font(.title)
                            .bold()
                            .padding()
                        Text("I provide essential stuff for your \n ui designs every tuesday!")
                    }
                    VStack{
                        Image("work_img2")
                        Text("Design Template uploads \n Every Tuesday!")
                            .font(.title)
                            .bold()
                            .padding()
                            .multilineTextAlignment(.center)
                        Text("Make sure to take a look my uplab \n profile every tuesday")
                    }
                    
                    VStack {
                        Image("work_img3")
                        Text("Download now!")
                            .font(.title)
                            .bold()
                            .padding()
                        Text("You can follow me if you wantand commen \n on any to get some freebies")
                    }
                }//
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                HStack {
                    Button(action: {
                        showSheet = true
                    }, label: {
                        Text("Skip")
                    })
                    .sheet(isPresented: $showSheet, onDismiss: {
                        
                    }, content: {
                        HomeView()
                    })
                    
                    Spacer()
//                    Button(action: {
//                        
//                    }, label: {
//                        Text("Next")
//                    })
                    
                    
                    
                    
                }
                .padding()
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
