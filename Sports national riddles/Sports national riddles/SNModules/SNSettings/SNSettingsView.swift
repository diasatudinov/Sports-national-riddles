//
//  SNSettingsView.swift
//  Sports national riddles
//
//

import SwiftUI

struct SNSettingsView: View {
    @StateObject private var settingsVM = GBSettingsViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            
            VStack(spacing: 30) {
                
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Image(.backIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                    }
                    
                    Text("Settings")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.appYellow)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                 
                
                VStack(spacing: 24) {
                    
                    Button {
                        settingsVM.soundEnabled.toggle()
                    } label: {
                        
                        Image(settingsVM.soundEnabled ? .soundOn : .soundOff)
                            .resizable()
                            .scaledToFit()
                            .overlay(alignment: .trailing) {
                                Image(settingsVM.soundEnabled ? .onSN : .offSN)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 32)
                                    .padding(.trailing)
                            }
                    }
                    
                    Button {
                        settingsVM.vibraEnabled.toggle()
                    } label: {
                        
                        Image(settingsVM.vibraEnabled ? .vibraOn : .vibraOff)
                            .resizable()
                            .scaledToFit()
                            .overlay(alignment: .trailing) {
                                Image(settingsVM.vibraEnabled ? .onSN : .offSN)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 32)
                                    .padding(.trailing)
                            }
                    }
                    
                }
                .frame(maxHeight: .infinity, alignment: .center)
                .padding(.bottom, 100)
                
            }.padding(24)
            
        }.frame(maxWidth: .infinity)
            .background(
                ZStack {
                    Image(.menuBgSN)
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                }
            )
    }
}


#Preview {
    SNSettingsView()
}
