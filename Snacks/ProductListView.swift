//
//  ProductListView.swift
//  Snacks
//
//  Created by Gulam Ali on 15/10/24.
//

import SwiftUI

struct ProductListView: View {
    
    var categoryName : String? = "Chips"
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
       // ScrollView{
            VStack{
                //Header view
                HStack{
                    Text("\(categoryName ?? "") **Collections**")
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
                
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                        ForEach(AllProducts){ product in
                            NavigationLink {
                                DetailView()
                            } label: {
                                productCardSmall(product: product)
                            }
                            
                        }
                    })
                    .padding(.horizontal, 15)
                }
            
  
            }
       // }
        .toolbar(.hidden, for: .navigationBar)
     
        
    }
    

    
}

#Preview {
    ProductListView()
}

struct productCardSmall : View {
    var product : Product
    var body: some View {
        
        ZStack{
       
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -70)
            
            
            ZStack{
                VStack(alignment: .leading, spacing: 10){
                    Text(product.title)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(Color.primary)
                        .lineLimit(2)
                        .padding(.top, 25)
                       // .padding(.leading)
                        .frame(width: 100, alignment: .leading)
                        //.background(.red)
                    
                    
                    Text(product.category)
                        .font(.system(size: 10))
                        .foregroundStyle(.black.opacity(0.5))
                        .frame(height: 2)
                        .padding(8)
                        .background(.white)
                        .clipShape(.capsule)
                    
                    Spacer()
                    
                    HStack{
                        Text("$\(product.price)")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundStyle(Color.primary)
                            .padding(.leading, 10)
                        
                        Spacer()
                        
                        Image("bag")
                            .padding()
                            .frame(width: 50, height: 40)
                            .background(.black)
                            .clipShape(.capsule)
                            .padding(.trailing, 4)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 45)
                    .background(Color.white.opacity(0.8))
                    .clipShape(.capsule)
                    
                }
            }
            .padding(10)
            .frame(width: 172, height: 216)
            
            
        }
        .frame(width: 172, height: 216)
        .background(Color(hex: product.color))
        .clipShape(.buttonBorder)
        .padding(.leading, 10)
        
    }
}
