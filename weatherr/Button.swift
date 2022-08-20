//
//  Button.swift
//  weatherr
//
//  Created by فاطمة on 22/01/1444 AH.
//

import SwiftUI

struct buttonView: View {
    var title: String
    var backgroundColor: Color
    var fontColorView: Color
    
    var body: some View{
        Text(title)
.frame(width: 288, height: 50)
.font(.system(size: 20, weight:.bold))
.foregroundColor(fontColorView)
.background(backgroundColor)
    }
    
}
