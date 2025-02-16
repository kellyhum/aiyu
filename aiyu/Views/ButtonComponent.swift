//
//  ButtonComponent.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-15.
//

import SwiftUI

public struct ButtonComponent: ButtonStyle {

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 25)
            .padding(.vertical, 15)
            .background(.black)
            .foregroundStyle(.white)
            .cornerRadius(25)
    }
}
