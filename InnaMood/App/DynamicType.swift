//
//  DynamicType.swift
//  InnaMood
//
//  Created by dmoney on 5/10/24.
//

import Foundation
import SwiftUI

/*

 @Environment(\.dynamicTypeSize) var dynamicTypeSize


 let dynamicHStack = dynamicTypeSize <= .xLarge ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())

 let dynamicVStack = dynamicTypeSize <= .xLarge ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())


 */
struct DynamicButtonBG: ViewModifier {

    func body(content: Content) -> some View {
        content
            .padding(.vertical, 4)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.primary)
            .backgroundStyle(.secondary)
            .background(.thickMaterial) //compatible with Vision & iPhone
            .background(in:RoundedRectangle(cornerRadius: 8))


    }
}
extension View {
    func dynaButtonBG() -> some View {
        modifier(DynamicButtonBG())
    }

}

struct NiceParagraph: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .padding(.bottom, 7)
    }
}

extension View {
    func niceParagraph() -> some View {
        modifier(NiceParagraph())
    }
}
