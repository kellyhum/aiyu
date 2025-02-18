//
//  CanvasView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-17.
//

import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView // @binding = another object owns it
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput // allow handwriting (and pencil)
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5) // default black pen w/ width 3
        
        return canvasView
    }
    
    // would update this canvasview when swiftui changes -> we don't need this -> leave empty
    func updateUIView(_ uiView: PKCanvasView, context: Context) {}
}
