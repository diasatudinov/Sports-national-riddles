import SwiftUI

// MARK: - Game Mode

enum GameMode: String, CaseIterable, Identifiable {
    case inventory
    case terms

    var id: Self { self }

    var title: String {
        switch self {
        case .inventory: return "Инвентарь"
        case .terms: return "Термины"
        }
    }

    var questionText: String {
        switch self {
        case .inventory:
            return "К какому спорту относится предмет на картинке?"
        case .terms:
            return "В каком виде спорта используется этот термин?"
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
    case baseball
    case handball

    case bowling
    case archery
    case surfing
    case cricket
    case athletics

    case martialArts
    case gymnastics
    case skateboarding
    case americanFootball
    case figureSkating

    var title: String {
        switch self {
        case .football: return "Футбол"
        case .basketball: return "Баскетбол"
        case .tennis: return "Теннис"
        case .hockey: return "Хоккей"
        case .volleyball: return "Волейбол"

        case .rugby: return "Регби"
        case .golf: return "Гольф"
        case .boxing: return "Бокс"
        case .swimming: return "Плавание"
        case .skiing: return "Лыжи"

        case .snowboarding: return "Сноуборд"
        case .cycling: return "Велоспорт"
        case .tableTennis: return "Настольный теннис"
        case .baseball: return "Бейсбол"
        case .handball: return "Гандбол"

        case .bowling: return "Боулинг"
        case .archery: return "Стрельба из лука"
        case .surfing: return "Серфинг"
        case .cricket: return "Крикет"
        case .athletics: return "Лёгкая атлетика"

        case .martialArts: return "Единоборства"
        case .gymnastics: return "Гимнастика"
        case .skateboarding: return "Скейтбординг"
        case .americanFootball: return "Американский футбол"
        case .figureSkating: return "Фигурное катание"
        }
    }
}

// MARK: - Question Visual

enum QuestionVisual: Hashable {
    case image(String)
    case text(String)
}

// MARK: - Models

struct BingoQuestion: Identifiable, Hashable {
    let id: String
    let sport: Sport
    let visual: QuestionVisual
}

struct BoardCell: Identifiable, Hashable {
    let id = UUID()
    let sport: Sport
    var isMarked: Bool = false
}

// MARK: - Question Bank

enum QuestionBank {
    static let inventory: [BingoQuestion] = [
        .init(id: "inv_football", sport: .football, visual: .image("item_football_ball")),
        .init(id: "inv_basketball", sport: .basketball, visual: .image("item_basketball_ball")),
        .init(id: "inv_tennis", sport: .tennis, visual: .image("item_tennis_racket")),
        .init(id: "inv_hockey", sport: .hockey, visual: .image("item_hockey_stick")),
        .init(id: "inv_volleyball", sport: .volleyball, visual: .image("item_volleyball_ball")),

        .init(id: "inv_rugby", sport: .rugby, visual: .image("item_rugby_ball")),
        .init(id: "inv_golf", sport: .golf, visual: .image("item_golf_club")),
        .init(id: "inv_boxing", sport: .boxing, visual: .image("item_boxing_gloves")),
        .init(id: "inv_swimming", sport: .swimming, visual: .image("item_swimming_goggles")),
        .init(id: "inv_skiing", sport: .skiing, visual: .image("item_skis")),

        .init(id: "inv_snowboarding", sport: .snowboarding, visual: .image("item_snowboard")),
        .init(id: "inv_cycling", sport: .cycling, visual: .image("item_cycling_helmet")),
        .init(id: "inv_table_tennis", sport: .tableTennis, visual: .image("item_pingpong_paddle")),
        .init(id: "inv_baseball", sport: .baseball, visual: .image("item_baseball_bat")),
        .init(id: "inv_handball", sport: .handball, visual: .image("item_handball_goal")),

        .init(id: "inv_bowling", sport: .bowling, visual: .image("item_bowling_ball")),
        .init(id: "inv_archery", sport: .archery, visual: .image("item_bow")),
        .init(id: "inv_surfing", sport: .surfing, visual: .image("item_surfboard")),
        .init(id: "inv_cricket", sport: .cricket, visual: .image("item_cricket_bat")),
        .init(id: "inv_athletics", sport: .athletics, visual: .image("item_running_spikes")),

        .init(id: "inv_martial_arts", sport: .martialArts, visual: .image("item_belt")),
        .init(id: "inv_gymnastics", sport: .gymnastics, visual: .image("item_rings")),
        .init(id: "inv_skateboarding", sport: .skateboarding, visual: .image("item_skateboard")),
        .init(id: "inv_american_football", sport: .americanFootball, visual: .image("item_football_helmet")),
        .init(id: "inv_figure_skating", sport: .figureSkating, visual: .image("item_skates"))
    ]

    static let terms: [BingoQuestion] = [
        .init(id: "term_offside", sport: .football, visual: .text("Офсайд")),
        .init(id: "term_slam_dunk", sport: .basketball, visual: .text("Слэм-данк")),
        .init(id: "term_ace", sport: .tennis, visual: .text("Эйс")),
        .init(id: "term_power_play", sport: .hockey, visual: .text("Power play")),
        .init(id: "term_block", sport: .volleyball, visual: .text("Блок")),

        .init(id: "term_try", sport: .rugby, visual: .text("Try")),
        .init(id: "term_birdie", sport: .golf, visual: .text("Birdie")),
        .init(id: "term_knockout", sport: .boxing, visual: .text("Knockout")),
        .init(id: "term_freestyle", sport: .swimming, visual: .text("Freestyle")),
        .init(id: "term_slalom", sport: .skiing, visual: .text("Slalom")),

        .init(id: "term_halfpipe", sport: .snowboarding, visual: .text("Halfpipe")),
        .init(id: "term_peloton", sport: .cycling, visual: .text("Peloton")),
        .init(id: "term_spin", sport: .tableTennis, visual: .text("Spin")),
        .init(id: "term_home_run", sport: .baseball, visual: .text("Home run")),
        .init(id: "term_7meter", sport: .handball, visual: .text("7-метровый бросок")),

        .init(id: "term_strike", sport: .bowling, visual: .text("Strike")),
        .init(id: "term_bullseye", sport: .archery, visual: .text("Bullseye")),
        .init(id: "term_tube_ride", sport: .surfing, visual: .text("Tube ride")),
        .init(id: "term_wicket", sport: .cricket, visual: .text("Wicket")),
        .init(id: "term_steeplechase", sport: .athletics, visual: .text("Steeplechase")),

        .init(id: "term_ippon", sport: .martialArts, visual: .text("Ippon")),
        .init(id: "term_vault", sport: .gymnastics, visual: .text("Vault")),
        .init(id: "term_kickflip", sport: .skateboarding, visual: .text("Kickflip")),
        .init(id: "term_touchdown", sport: .americanFootball, visual: .text("Touchdown")),
        .init(id: "term_axel", sport: .figureSkating, visual: .text("Axel"))
    ]

    static func questions(for sport: Sport, mode: GameMode) -> [BingoQuestion] {
        switch mode {
        case .inventory:
            return inventory.filter { $0.sport == sport }
        case .terms:
            return terms.filter { $0.sport == sport }
        }
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
            feedbackText = "Верно!"

            if hasBingo() {
                isBingoPresented = true
            } else {
                loadNextQuestion()
            }
        } else {
            feedbackText = "Неверно, попробуйте ещё"
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

        // Rows
        for row in 0..<5 {
            let rowComplete = (0..<5).allSatisfy { column in
                board[row * 5 + column].isMarked
            }
            if rowComplete { return true }
        }

        // Columns
        for column in 0..<5 {
            let columnComplete = (0..<5).allSatisfy { row in
                board[row * 5 + column].isMarked
            }
            if columnComplete { return true }
        }

        // Main diagonal
        let mainDiagonal = (0..<5).allSatisfy { index in
            board[index * 5 + index].isMarked
        }
        if mainDiagonal { return true }

        // Secondary diagonal
        let secondaryDiagonal = (0..<5).allSatisfy { index in
            board[index * 5 + (4 - index)].isMarked
        }
        if secondaryDiagonal { return true }

        return false
    }
}

// MARK: - View

struct SportBingoView: View {
    @StateObject private var viewModel = SportBingoViewModel()
    @State private var selectedMode: GameMode = .inventory

    private let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 5)

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Picker("Режим", selection: $selectedMode) {
                        ForEach(GameMode.allCases) { mode in
                            Text(mode.title).tag(mode)
                        }
                    }
                    .pickerStyle(.segmented)

                    VStack(spacing: 10) {
                        Text(viewModel.questionText)
                            .font(.headline)
                            .multilineTextAlignment(.center)

                        QuestionCardView(question: viewModel.currentQuestion)
                    }

                    if !viewModel.feedbackText.isEmpty {
                        Text(viewModel.feedbackText)
                            .font(.subheadline.weight(.semibold))
                            .foregroundStyle(.secondary)
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
                        Text("Отмечено: \(viewModel.markedCount)/25")
                            .font(.subheadline)

                        Spacer()

                        Button("Новая игра") {
                            viewModel.startNewGame(mode: selectedMode)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                .padding()
            }
            .navigationTitle("Sport Bingo")
            .task {
                if viewModel.board.isEmpty {
                    viewModel.startNewGame(mode: selectedMode)
                }
            }
            .onChange(of: selectedMode) { newValue in
                viewModel.startNewGame(mode: newValue)
            }
            .alert("Бинго!", isPresented: $viewModel.isBingoPresented) {
                Button("Новая игра") {
                    viewModel.startNewGame(mode: selectedMode)
                }
                Button("ОК", role: .cancel) { }
            } message: {
                Text("Вы собрали линию из пяти отмеченных ячеек.")
            }
        }
    }
}

// MARK: - Subviews

struct QuestionCardView: View {
    let question: BingoQuestion?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue.opacity(0.08))

            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue.opacity(0.2), lineWidth: 1)

            Group {
                if let question {
                    switch question.visual {
                    case .image(let imageName):
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .padding(20)

                    case .text(let term):
                        Text(term)
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.6)
                            .padding(20)
                    }
                } else {
                    ProgressView()
                }
            }
        }
        .frame(height: 220)
    }
}

struct SportCellView: View {
    let cell: BoardCell

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 14)
                .fill(cell.isMarked ? Color.green.opacity(0.85) : Color.blue.opacity(0.12))

            RoundedRectangle(cornerRadius: 14)
                .stroke(cell.isMarked ? Color.green : Color.blue.opacity(0.25), lineWidth: 1)

            Text(cell.sport.title)
                .font(.system(size: 12, weight: .semibold))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.7)
                .foregroundStyle(.primary)
                .padding(6)
        }
        .frame(height: 62)
    }
}

// MARK: - Preview

#Preview {
    SportBingoView()
}