//
//  JournalModel.swift
//  InnaMood
//
//  Created by dmoney on 5/10/24.
//

import Foundation
import SwiftData

@Model
final class Journal: Observable {
    @Attribute(.unique) var title: String
    var creationDate: Date
    @Relationship var pages: [Page] = []

    init(title: String, creationDate: Date = .now) {
        self.title = title
        self.creationDate = creationDate
        self.pages = []
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
}

@Model
 class Page: Observable {
    var text: String
    var imageData: Data?
    var voiceMemoData: Data?
    var drawingData: Data?
    var creationDate: Date
    var journal: Journal?

     init(text: String = "", imageData: Data? = nil, voiceMemoData: Data? = nil, drawingData: Data? = nil, creationDate: Date = .now, journal: Journal? = nil) {
        self.text = text
        self.imageData = imageData
        self.voiceMemoData = voiceMemoData
        self.drawingData = drawingData
        self.creationDate = creationDate
        self.journal = journal
    }
}


