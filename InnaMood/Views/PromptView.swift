//
//  PromptView.swift
//  InnaMood
//
//  Created by dmoney on 5/14/24.
//

import SwiftUI

struct PromptView: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize

    var body: some View {


        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(gradient:
                                    Gradient(colors:
                                    [Color.green.opacity(0.8),
                                     Color.teal.opacity(0.6),
                                     Color.teal.opacity(0.6),
                                     Color.teal.opacity(0.6),
                                     Color.teal.opacity(0.6),
                                     Color.green.opacity(0.8)
                                    ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(height: geometry.size.height / 4)
                .overlay(
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white.opacity(0.3))
                        .frame(width: .infinity, height: 150)
                        .overlay(
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Welcome to InnaMood")
                                        .font(.title3)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(Color.black)
                                        .niceParagraph()
                                    Text("Prompt Goes Here")
                                        .font(.subheadline)
                                        .foregroundStyle(Color.black)
                                        .niceParagraph()
                                }
                                .padding()
                                Spacer()
                                Image(systemName: "brain.fill")
                                    .imageScale(.large)
                                    .font(.system(size: 40))
                            }
                                .padding()

                        )
                        .padding()
                        .foregroundColor(.white)
                )
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    PromptView()
}
