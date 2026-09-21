//
//  CampusPlaceView.swift
//  Campus Compass
//
//  Created by mohammed.sanusi on 9/14/26.
//

import SwiftUI

struct CampusPlaceView: View {
    let name, symbol, description, hours : String
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.system(size: 70))
                .foregroundStyle(.tint)
            
            Text(name)
                .font(.largeTitle)
                .bold()
            
            Text(description)
                .multilineTextAlignment(.center)
            
            Divider()
            
            Text("Hours")
                .font(.headline)
                
            Text(hours)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    CampusPlaceView(
        name: "Some Place",
        symbol: "circle.fill",
        description: "Some description",
        hours: "Happy"
        
    )
}
