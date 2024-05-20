//
//  JournalModel.swift
//  InnaMood
//
//  Created by dmoney on 5/10/24.
//

import Foundation
import SwiftData

@Model
final class Journal {
    @Attribute(.unique) var id: UUID
    var title: String
    var creationDate: Date
    @Relationship var pages: [Page] = []

    init(title: String, creationDate: Date = Date()) {
        self.id = UUID()
        self.title = title
        self.creationDate = creationDate
    }
}

@Model
final class Page {
    @Attribute(.unique) var id: UUID
    var text: String?
    var imageData: Data?
    var voiceMemoData: Data?
    var drawingData: Data?
    var creationDate: Date
    var journal: Journal?

    init(text: String? = nil, imageData: Data? = nil, voiceMemoData: Data? = nil, drawingData: Data? = nil, creationDate: Date = Date(), journal: Journal? = nil) {
        self.id = UUID()
        self.text = text
        self.imageData = imageData
        self.voiceMemoData = voiceMemoData
        self.drawingData = drawingData
        self.creationDate = creationDate
        self.journal = journal
    }
}

@Model
final class JournalPrompt {
    @Attribute(.unique) var id: UUID
    var prompt: String

    init(prompt: String) {
        self.id = UUID()
        self.prompt = prompt
    }
}

func generateRandomPrompt() -> String {
    let prompts = [
        "What's on your mind?",
        "What made you smile?",
        "What is blocking you?",
        "What are you grateful for?",
        "Reflect on your day so far"
    ]
    return prompts.randomElement() ?? "Write about anything that comes to mind"
}
