//
//  File.swift
//  AlexTirth
//
//  Created by Alexander L. Martinez on 9/8/23.
//

import Foundation
import SwiftUI

struct Shapes: View {
var body: some View {
Circle()
    .frame(width: 300, height: 100)
    .background(.blue)
    .foregroundColor(.red)
Rectangle()
    .frame(width: 100, height: 100, alignment: .center)
    .background(.blue)
    .foregroundColor(.white)
    .font(.largeTitle)
    .clipShape(Circle())
Ellipse()
    .stroke(.blue, lineWidth: 20)
    .frame(width: 300, height: 150)
Capsule(style: .circular)
RoundedRectangle(cornerRadius: 50)
    .frame(width: 100, height: 50)
    
}
}
