//
//  GameMode.swift
//  Sports national riddles
//
//


import SwiftUI

// MARK: - Game Mode

enum GameMode: String, CaseIterable, Identifiable {
    case inventory
    case terms

    var id: Self { self }

    var title: String {
        switch self {
        case .inventory: return "Inventory"
        case .terms: return "Terms"
        }
    }

    var questionText: String {
        switch self {
        case .inventory:
            return "Which sport does the item in the picture belong to?"
        case .terms:
            return "Which sport does this term belong to?"
        }
    }
}

// MARK: - Sport

enum Sport: String, CaseIterable, Hashable {
    case football
    case basketball
    case tennis
    case hockey
    case volleyball
    case rugby

    case golf
    case boxing
    case swimming
    case skiing
    case snowboarding

    case cycling
    case tableTennis
    case badminton
    case cricket
    case handball
    case bowling

    case fencing
    case archery
    case surfing
    case skateboarding
    case weightlifting
    case gymnastics

    case wrestling
    case judo
    case karate
    case americanFootball
    case horseRiding
    case iceSkating

    var title: String {
        switch self {
        case .football: return "Football"
        case .basketball: return "Basketball"
        case .tennis: return "Tennis"
        case .hockey: return "Hockey"
        case .volleyball: return "Volleyball"
        case .rugby: return "Rugby"

        case .golf: return "Golf"
        case .boxing: return "Boxing"
        case .swimming: return "Swimming"
        case .skiing: return "Skiing"
        case .snowboarding: return "Snowboarding"

        case .cycling: return "Cycling"
        case .tableTennis: return "Table Tennis"
        case .badminton: return "Badminton"
        case .cricket: return "Cricket"
        case .handball: return "Handball"
        case .bowling: return "Bowling"

        case .fencing: return "Fencing"
        case .archery: return "Archery"
        case .surfing: return "Surfing"
        case .skateboarding: return "Skateboarding"
        case .weightlifting: return "Weightlifting"
        case .gymnastics: return "Gymnastics"

        case .wrestling: return "Wrestling"
        case .judo: return "Judo"
        case .karate: return "Karate"
        case .americanFootball: return "American Football"
        case .horseRiding: return "Horse Riding"
        case .iceSkating: return "Ice Skating"
        }
    }
}

// MARK: - Models

struct BingoQuestion: Identifiable, Hashable {
    let id: String
    let sport: Sport
    let imageName: String
}

struct BoardCell: Identifiable, Hashable {
    let id = UUID()
    let sport: Sport
    var isMarked: Bool = false
}

// MARK: - Question Bank

enum QuestionBank {
    static let inventory: [BingoQuestion] = [
        .init(id: "inv_football", sport: .football, imageName: "inv_football_ball"),
        .init(id: "inv_basketball", sport: .basketball, imageName: "inv_basketball_ball"),
        .init(id: "inv_tennis", sport: .tennis, imageName: "inv_tennis_racket"),
        .init(id: "inv_hockey", sport: .hockey, imageName: "inv_hockey_stick"),
        .init(id: "inv_volleyball", sport: .volleyball, imageName: "inv_volleyball_ball"),
        .init(id: "inv_rugby", sport: .rugby, imageName: "inv_rugby_ball"),

        .init(id: "inv_golf", sport: .golf, imageName: "inv_golf_club"),
        .init(id: "inv_boxing", sport: .boxing, imageName: "inv_boxing_gloves"),
        .init(id: "inv_swimming", sport: .swimming, imageName: "inv_swimming_goggles"),
        .init(id: "inv_skiing", sport: .skiing, imageName: "inv_skis"),
        .init(id: "inv_snowboarding", sport: .snowboarding, imageName: "inv_snowboard"),

        .init(id: "inv_cycling", sport: .cycling, imageName: "inv_cycling_helmet"),
        .init(id: "inv_table_tennis", sport: .tableTennis, imageName: "inv_table_tennis_paddle"),
        .init(id: "inv_badminton", sport: .badminton, imageName: "inv_shuttlecock"),
        .init(id: "inv_cricket", sport: .cricket, imageName: "inv_cricket_bat"),
        .init(id: "inv_handball", sport: .handball, imageName: "inv_handball_goal"),
        .init(id: "inv_bowling", sport: .bowling, imageName: "inv_bowling_ball"),

        .init(id: "inv_fencing", sport: .fencing, imageName: "inv_fencing_sword"),
        .init(id: "inv_archery", sport: .archery, imageName: "inv_bow"),
        .init(id: "inv_surfing", sport: .surfing, imageName: "inv_surfboard"),
        .init(id: "inv_skateboarding", sport: .skateboarding, imageName: "inv_skateboard"),
        .init(id: "inv_weightlifting", sport: .weightlifting, imageName: "inv_barbell"),
        .init(id: "inv_gymnastics", sport: .gymnastics, imageName: "inv_gymnastic_rings"),

        .init(id: "inv_wrestling", sport: .wrestling, imageName: "inv_wrestling_mask"),
        .init(id: "inv_judo", sport: .judo, imageName: "inv_judo_belt"),
        .init(id: "inv_karate", sport: .karate, imageName: "inv_karate_board"),
        .init(id: "inv_american_football", sport: .americanFootball, imageName: "inv_american_football_helmet"),
        .init(id: "inv_horse_riding", sport: .horseRiding, imageName: "inv_saddle"),
        .init(id: "inv_ice_skating", sport: .iceSkating, imageName: "inv_ice_skates")
    ]

    static let terms: [BingoQuestion] = [
        .init(id: "term_offside", sport: .football, imageName: "term_offside"),
        .init(id: "term_slam_dunk", sport: .basketball, imageName: "term_slam_dunk"),
        .init(id: "term_ace", sport: .tennis, imageName: "term_ace"),
        .init(id: "term_power_play", sport: .hockey, imageName: "term_power_play"),
        .init(id: "term_block", sport: .volleyball, imageName: "term_block"),
        .init(id: "term_try", sport: .rugby, imageName: "term_try"),

        .init(id: "term_birdie", sport: .golf, imageName: "term_birdie"),
        .init(id: "term_knockout", sport: .boxing, imageName: "term_knockout"),
        .init(id: "term_freestyle", sport: .swimming, imageName: "term_freestyle"),
        .init(id: "term_slalom", sport: .skiing, imageName: "term_slalom"),
        .init(id: "term_halfpipe", sport: .snowboarding, imageName: "term_halfpipe"),

        .init(id: "term_peloton", sport: .cycling, imageName: "term_peloton"),
        .init(id: "term_spin", sport: .tableTennis, imageName: "term_spin"),
        .init(id: "term_smash", sport: .badminton, imageName: "term_smash"),
        .init(id: "term_wicket", sport: .cricket, imageName: "term_wicket"),
        .init(id: "term_7meter_throw", sport: .handball, imageName: "term_7meter_throw"),
        .init(id: "term_strike", sport: .bowling, imageName: "term_strike"),

        .init(id: "term_riposte", sport: .fencing, imageName: "term_riposte"),
        .init(id: "term_bullseye", sport: .archery, imageName: "term_bullseye"),
        .init(id: "term_tube_ride", sport: .surfing, imageName: "term_tube_ride"),
        .init(id: "term_kickflip", sport: .skateboarding, imageName: "term_kickflip"),
        .init(id: "term_clean_and_jerk", sport: .weightlifting, imageName: "term_clean_and_jerk"),
        .init(id: "term_vault", sport: .gymnastics, imageName: "term_vault"),

        .init(id: "term_suplex", sport: .wrestling, imageName: "term_suplex"),
        .init(id: "term_ippon", sport: .judo, imageName: "term_ippon"),
        .init(id: "term_kata", sport: .karate, imageName: "term_kata"),
        .init(id: "term_touchdown", sport: .americanFootball, imageName: "term_touchdown"),
        .init(id: "term_dressage", sport: .horseRiding, imageName: "term_dressage"),
        .init(id: "term_axel", sport: .iceSkating, imageName: "term_axel")
    ]

    static func questions(for sport: Sport, mode: GameMode) -> [BingoQuestion] {
        let source = mode == .inventory ? inventory : terms
        return source.filter { $0.sport == sport }
    }
}

// MARK: - ViewModel

@MainActor
final class SportBingoViewModel: ObservableObject {
    @Published private(set) var board: [BoardCell] = []
    @Published private(set) var currentQuestion: BingoQuestion?
    @Published private(set) var mode: GameMode = .inventory
    @Published var feedbackText: String = ""
    @Published var isBingoPresented: Bool = false

    private var usedQuestionIDs: Set<String> = []

    var markedCount: Int {
        board.filter(\.isMarked).count
    }

    var questionText: String {
        mode.questionText
    }

    func startNewGame(mode: GameMode) {
        self.mode = mode
        feedbackText = ""
        isBingoPresented = false
        usedQuestionIDs.removeAll()

        let sports = Array(Sport.allCases.shuffled().prefix(25))
        board = sports.map { BoardCell(sport: $0) }

        loadNextQuestion()
    }

    func select(_ cell: BoardCell) {
        guard let currentQuestion else { return }
        guard !isBingoPresented else { return }

        guard let index = board.firstIndex(where: { $0.id == cell.id }) else { return }
        guard !board[index].isMarked else { return }

        if board[index].sport == currentQuestion.sport {
            board[index].isMarked = true
            usedQuestionIDs.insert(currentQuestion.id)
            feedbackText = "Correct!"

            if hasBingo() {
                isBingoPresented = true
            } else {
                loadNextQuestion()
            }
        } else {
            feedbackText = "Wrong answer. Try again."
        }
    }

    private func loadNextQuestion() {
        let remainingSports = board
            .filter { !$0.isMarked }
            .map(\.sport)

        guard let sport = remainingSports.randomElement() else {
            currentQuestion = nil
            return
        }

        let all = QuestionBank.questions(for: sport, mode: mode)
        let unused = all.filter { !usedQuestionIDs.contains($0.id) }
        currentQuestion = (unused.isEmpty ? all : unused).randomElement()
    }

    private func hasBingo() -> Bool {
        guard board.count == 25 else { return false }

        for row in 0..<5 {
            let complete = (0..<5).allSatisfy { column in
                board[row * 5 + column].isMarked
            }
            if complete { return true }
        }

        for column in 0..<5 {
            let complete = (0..<5).allSatisfy { row in
                board[row * 5 + column].isMarked
            }
            if complete { return true }
        }

        let mainDiagonal = (0..<5).allSatisfy { index in
            board[index * 5 + index].isMarked
        }
        if mainDiagonal { return true }

        let secondaryDiagonal = (0..<5).allSatisfy { index in
            board[index * 5 + (4 - index)].isMarked
        }
        if secondaryDiagonal { return true }

        return false
    }
}

// MARK: - View

struct SportBingoGameView: View {
    let mode: GameMode
    let onBackToMenu: () -> Void

    @StateObject private var viewModel = SportBingoViewModel()

    private let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 5)

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                
                
                HStack {
                    Button {
                        onBackToMenu()
                    } label: {
                        Image(.backIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack(spacing: 10) {
                    Text(viewModel.questionText)
                        .font(.system(size: 20, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.appYellow)
                        .textCase(.uppercase)
                    
                    QuestionCardView(question: viewModel.currentQuestion)
                }
                
                if !viewModel.feedbackText.isEmpty {
                    Text(viewModel.feedbackText)
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                } else {
                    Text("text")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary.opacity(0))
                }
                
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(viewModel.board) { cell in
                        Button {
                            viewModel.select(cell)
                        } label: {
                            SportCellView(cell: cell)
                        }
                        .buttonStyle(.plain)
                        .disabled(cell.isMarked || viewModel.isBingoPresented)
                    }
                }
                
                HStack {
                    Text("Marked: \(viewModel.markedCount)/25")
                        .font(.subheadline)
                    
                    Spacer()
                }
            }
            .padding()
            
        }
        .overlay(content: {
            if viewModel.isBingoPresented {
                ZStack {
                    
                    Color.black.opacity(0.8).ignoresSafeArea()
                    
                    Image(.bingoBg)
                        .resizable()
                        .scaledToFit()
                    
                    VStack {
                        Image(.flagsSN)
                            .resizable()
                            .scaledToFit()
                        
                        Spacer()
                    }
                    
                    Image(.winSN)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 50)
                        .overlay {
                            VStack {
                                Button {
                                    viewModel.startNewGame(mode: mode)
                                } label: {
                                    Image(.againBtnSN)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 65)
                                }
                                
                                Button {
                                    onBackToMenu()
                                } label: {
                                    Image(.modeBtnSN)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 65)
                                }
                                
                                Button {
                                    onBackToMenu()
                                } label: {
                                    Image(.menuBtnSN)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 65)
                                }
                            }
                            .padding(.top, 32)
                        }
                    
                }
            }
        })
        .task {
            viewModel.startNewGame(mode: mode)
        }
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

// MARK: - Subviews

struct QuestionCardView: View {
    let question: BingoQuestion?

    var body: some View {
        ZStack {
            Group {
                if let question {
                    Image(question.imageName)
                        .resizable()
                        .scaledToFit()
                } else {
                    ProgressView()
                }
            }
        }
    }
}

struct SportCellView: View {
    let cell: BoardCell

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .fill(cell.isMarked ? Color.white.opacity(0.12) : Color.white)

            RoundedRectangle(cornerRadius: 6)
                .stroke(cell.isMarked ? Color.clear : Color.secondary.opacity(0.25), lineWidth: 1)

            Text(cell.sport.title)
                .font(.system(size: 10, weight: .semibold))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.7)
                .foregroundStyle(.primary)
                .padding(6)
            
            if cell.isMarked {
                Image(.checkSN)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 45)
            }
        }
        .frame(height: 65)
    }
}

struct SportBingoRootView: View {
    @State private var selectedMode: GameMode?

    var body: some View {
        NavigationStack {
            Group {
                if let selectedMode {
                    SportBingoGameView(
                        mode: selectedMode,
                        onBackToMenu: {
                            self.selectedMode = nil
                        }
                    )
                } else {
                    ModeSelectionView { mode in
                        selectedMode = mode
                    }
                }
            }
        }
    }
}

struct ModeSelectionView: View {
    @Environment(\.presentationMode) var presentationMode

    let onSelectMode: (GameMode) -> Void

    var body: some View {
        ZStack {

            VStack(spacing: 24) {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Image(.backIconSN)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                    }
                    
                    Text("Select Game Mode")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.appYellow)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                VStack(spacing: 16) {
                    Button {
                        onSelectMode(.inventory)
                    } label: {
                        Image("InventorySN")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 87)
                       
                    }

                    Button {
                        onSelectMode(.terms)
                    } label: {
                        Image("TermsSN")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 87)
                    }
                }
                .padding(.top, 150)

                Spacer()
            }
            .padding(24)
        }
        .navigationBarHidden(true)
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
    SportBingoRootView()
}
