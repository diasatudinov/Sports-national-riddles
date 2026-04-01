//
//  SNInstructionsView.swift
//  Sports national riddles
//
//

import SwiftUI

struct SNInstructionsView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Image(.backIconSN)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                }
                
                Text("How to Play")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.appYellow)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            ScrollView(showsIndicators: false) {
                VStack {
                    Image(.step1SN)
                        .resizable()
                        .scaledToFit()
                    
                    Image(.step2SN)
                        .resizable()
                        .scaledToFit()
                    
                    Image(.step3SN)
                        .resizable()
                        .scaledToFit()
                    
                    Image(.step4SN)
                        .resizable()
                        .scaledToFit()
                    
                    Image(.tipsSN)
                        .resizable()
                        .scaledToFit()
                        .padding(.top)
                    
                    Image(.buttonSN)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .padding(.top)
                }
            }
        }
        .padding()
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
    SNInstructionsView()
}
