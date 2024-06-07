//
//  Test_Ex.swift
//  Onboarding Screen
//
//  Created by Ko  Linn on R 6/06/01.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPage = 0
    let totalPages = 3
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentPage) {
                    OnboardingPage(imageName: "onboarding1", title: "Welcome to Surf.", description: "I provide essential stuff for your ui designs every tuesday!")
                        .tag(0)
                    OnboardingPage(imageName: "onboarding2", title: "Design Template uploads Every Tuesday!", description: "Make sure to take a look my uplab profile every tuesday")
                        .tag(1)
                    OnboardingPage(imageName: "onboarding3", title: "Download now!", description: "You can follow me if you want and comment on any to get some freebies")
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                
                HStack {
                    if currentPage < totalPages - 1 {
                        Button(action: {
                            // Skip button action
                            goToHome()
                        }) {
                            Text("Skip")
                                .padding()
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Next button action
                        if currentPage < totalPages - 1 {
                            currentPage += 1
                        } else {
                            goToHome()
                        }
                    }) {
                        Text(currentPage < totalPages - 1 ? "Next" : "Get Started")
                            .padding()
                    }
                }
                .padding()
            }
        }
    }
    
    func goToHome() {
        // Navigation to home screen
        // For example, you can use a NavigationLink or change the root view
    }
}

struct OnboardingPage: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Text(description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
    }
}

struct Test_Ex: View {
    var body: some View {
        OnboardingView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Test_Ex()
    }
}
