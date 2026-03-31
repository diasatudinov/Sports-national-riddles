//
//  GBSettingsViewModel.swift
//  Sports national riddles
//
//



import SwiftUI

class GBSettingsViewModel: ObservableObject {
    @AppStorage("soundEnabled") var soundEnabled: Bool = true
    @AppStorage("vibraEnabled") var vibraEnabled: Bool = true
}
