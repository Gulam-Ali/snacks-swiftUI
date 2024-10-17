//
//  DetailView.swift
//  Snacks
//
//  Created by Gulam Ali on 17/10/24.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) var dismiss
        
    var body: some View {
        VStack{
            HStack{
                Text("Coconut\n**Chips**")
                    .font(.system(size: 32))
                    .padding(.trailing)
                
                Spacer()
                
                Image("Vector")
                    .imageScale(.large)
                    .padding()
                    .frame(width: 70, height: 90)
                    .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(lineWidth: 5)
                        .fill(Color.unselection)
                    )
                    .onTapGesture {
                        dismiss()
                    }
            }
            .padding(25)
            
            Image("Rectangle 1")
               
            Text("1")
                .font(.system(size: 50, weight: .bold))
            
            Text("$06.00")
                .font(.system(size: 23, weight: .bold))
                .padding()
                .background(Color(.unselection))
                .clipShape(Capsule())
                .offset(y: -20)
                
    
            HStack{
                Text("Add to Cart")
                    .font(.system(size: 22, weight: .semibold))
                    .padding(.leading, 60)
                
                Spacer()
                
                Image("bag")
                    .padding()
                    .frame(width: 80, height: 60)
                    .background(.black)
                    .clipShape(.capsule)
                    .padding(.trailing, 8)
            }
            .frame(height: 85)
            .background(Color(hex: "FFEC89"))
            .clipShape(.capsule)
            .padding(.horizontal, 35)
          
            Spacer()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    DetailView()
}

