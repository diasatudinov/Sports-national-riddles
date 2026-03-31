//
//  SNGuideView.swift
//  Sports national riddles
//
//

import SwiftUI

struct SNGuideView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModel = SNGuideViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Image(.backIconSN)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                }
                
                Text("Sports Guide")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.appYellow)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.guides, id: \.image) { guide in
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            HStack(spacing: 8) {
                                
                                Image(guide.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 40)
                                
                                VStack(spacing: 4) {
                                    Text(guide.name)
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    HStack {
                                        
                                        Image(guide.country)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 17)
                                        
                                        Text(guide.country)
                                            .font(.system(size: 9, weight: .regular))
                                            .foregroundStyle(.white)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    
                                }
                            }
                            
                            Text(guide.description)
                                .font(.system(size: 9, weight: .regular))
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 12)
                        .background(.cellBg)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1.5)
                                .foregroundStyle(.appYellow)
                        }
                    }
                }
            }
        }
        .padding()
        .background(
            ZStack {
                Image(.menuBgSN)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
            }
        )
    }
}

#Preview {
    SNGuideView()
}
