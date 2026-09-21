//
//  AboutView.swift
//  Campus Compass
//
//  Created by mohammed.sanusi on 9/14/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "location.circle.fill")
                .font(.system(size: 70))
                .foregroundStyle(.tint)
            
            Text("Campus Compass")
                .font(.largeTitle)
                .bold()
            
            Text("A simple demonstration app for finding useful places around campus")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
