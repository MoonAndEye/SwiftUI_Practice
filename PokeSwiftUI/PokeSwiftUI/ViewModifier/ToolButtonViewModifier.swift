//
//  ToolButtonViewModifier.swift
//  PokeSwiftUI
//
//  Created by Moon on 2020/3/5.
//  Copyright © 2020 CMoney. All rights reserved.
//

import Foundation
import SwiftUI

struct ToolButtonViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
    }
}
