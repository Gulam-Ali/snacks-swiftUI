//
//  WelcomeView.swift
//  Snacks
//
//  Created by Gulam Ali on 12/10/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Color(.appBackground)
                .ignoresSafeArea()
            Image("image 5")
                .resizable()
                .frame(width: 300, height: 300)
            Text("Snacks")
                .font(.system(size: 65))
                .italic()
                .bold()
                .foregroundStyle(Color.appButton)
                .offset(y: 140)
        }
        
    }
}

#Preview {
    WelcomeView()
}
