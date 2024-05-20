//
//  JounalRowView.swift
//  InnaMood
//
//  Created by dmoney on 5/16/24.
//

import SwiftUI

struct JounalRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "note.text")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 30)
                    .foregroundStyle(Color.green)
                    .shadow(color: Color.gray, radius: 100)
            }
            .padding()
            Text("Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!")
                .font(.body)
                .lineLimit(1)
                .padding(.horizontal)
                .padding(.bottom)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 2)
        )
        .padding(.horizontal)
    }
}

#Preview {
    JounalRowView()
}
