//
//  SNMenuView.swift
//  Sports national riddles
//
//

import SwiftUI

struct SNMenuView: View {
    @State private var showGame = false
    @State private var showInstructions = false
    @State private var showGuide = false
    @State private var showSettings = false
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 20) {
                Image(.logoSN)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                
                Image(.textSN)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 110)
                
                VStack(spacing: 20) {
                    
                    Button {
                        showGame = true
                    } label: {
                        Image(.playIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 85)
                    }
                    
                    Button {
                        showGuide = true
                    } label: {
                        Image(.guideIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                    }
                    
                    Button {
                        showInstructions = true
                    } label: {
                        Image(.instructionIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                    }
                    
                    Button {
                        showSettings = true
                    } label: {
                        Image(.settingsIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                    }
                    
                }.frame(maxHeight: .infinity, alignment: .top)
            }.padding(.top, 30)
            
        }.frame(maxWidth: .infinity)
            .background(
                ZStack {
                    Image(.menuBgSN)
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .scaledToFill()
                }
            )
            .fullScreenCover(isPresented: $showGame) {
                NavigationStack {
                    //                    ChooseTopicView()
                }
            }
            .fullScreenCover(isPresented: $showInstructions) {
                //                GBInstructionsView()
            }
            .fullScreenCover(isPresented: $showSettings) {
                SNSettingsView()
            }
            .fullScreenCover(isPresented: $showGuide) {
                SNGuideView()
            }
        
    }
}


#Preview {
    SNMenuView()
}
