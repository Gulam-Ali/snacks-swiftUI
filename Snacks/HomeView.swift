//
//  HomeView.swift
//  Snacks
//
//  Created by Gulam Ali on 12/10/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedCategory = "All"
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack{
                    //Header view
                    HStack{
                        Text("Order From The Best Of **Snacks**")
                            .font(.system(size: 32))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Image("Group 1171274699")
                            .imageScale(.large)
                            .padding()
                            .frame(width: 70, height: 90)
                            .overlay(RoundedRectangle(cornerRadius: 50)
                                .stroke(lineWidth: 5)
                                .fill(Color.unselection)
                            )
                    }
                    .padding(25)
                    
                    //Category List
                    categoryListView
                    
                    //CollectionView
                    HStack{
                        Text("\(selectedCategory) **Collections**")
                            .font(.system(size: 22))
                            .padding(.trailing)
                        
                        Spacer()
                        

                        NavigationLink {
                            ProductListView(categoryName: selectedCategory)
                        } label: {
                            Image("Group 1171274710")
                        }

      
                        
                    }
                    .padding(25)
                    
                    //Products
                    productView
                    
                }
            }
        }
//        .navigationDestination(for: String.self) { value in
//            if value == "List"{
//                ProductListView(categoryName: selectedCategory)
//            }
//          
//        }
    }
    
    var productView : some View{
        HStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(AllProducts){ product in
                        productCard(product: product)
                    }
                }
                .padding(.leading, 20)
            }
        }
    }
    
    var categoryListView: some View {
        HStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(categoryList){ category in
                        Button(action: {
                            selectedCategory = category.title
                        }, label: {
                            HStack{
                                if category.title != "All"{
                                    Image(category.icon)
                                        .foregroundStyle(selectedCategory == category.title ? .yellow : .black)
                                }
                                
                                Text(category.title)
                                    .foregroundStyle(selectedCategory == category.title ? .white : .black)
                                
                            }
                            .padding()
                            .background(selectedCategory == category.title ? Color.black : Color.unselection)
                            .clipShape(Capsule())
                        })
                    }
                }
                
            }
            .padding(.leading)
        }
        
    }
    
    
}

#Preview {
    HomeView()
}


struct productCard : View {
    var product : Product
    var body: some View {
        
        ZStack{
            //            Rectangle()
            //                .foregroundStyle(Color(hex: product.color))
            //                .clipShape(.buttonBorder)
            //                .frame(width: 336, height: 422)
            //                //.padding(.leading, 8)
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -70)
            
            
            ZStack{
                VStack(alignment: .leading, spacing: 10){
                    Text(product.title)
                        .font(.system(size: 34, weight: .semibold))
                        .padding(.top, 25)
                        .padding(.leading, -25)
                        .frame(width: 140)
                    
                    Text(product.category)
                        .font(.callout)
                        .foregroundStyle(.black.opacity(0.5))
                        .frame(height: 4)
                        .padding()
                        .background(.white)
                        .clipShape(.capsule)
                    
                    Spacer()
                    
                    HStack{
                        Text("$\(product.price)")
                            .font(.system(size: 22, weight: .medium))
                            .padding(.leading, 30)
                        
                        Spacer()
                        
                        Image("bag")
                            .padding()
                            .frame(width: 80, height: 60)
                            .background(.black)
                            .clipShape(.capsule)
                            .padding(.trailing, 8)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 65)
                    .background(Color.white.opacity(0.8))
                    .clipShape(.capsule)
                    
                }
            }
            .padding(30)
            .frame(width: 336, height: 422)
            
            
        }
        .background(Color(hex: product.color))
        .clipShape(.buttonBorder)
        .padding(.leading, 5)
        
    }
}
