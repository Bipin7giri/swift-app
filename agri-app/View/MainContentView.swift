//
//  MainContentView.swift
//  agri-app
//
//  Created by Bipin Giri on 21/03/2024.
//

import SwiftUI

struct MainContentView: View {

    var body: some View {
        ScrollView{
           VStack(spacing: 40){
               NavigationView
               SearchBar
               
               HStack{
                   Text("Choco **Collections**")
                       .font(.system(size: 24))
                   Spacer()
                   Image(systemName: "arrow.right")
                       .imageScale(.large)
               }
               .padding(.horizontal,30)
               .padding(.vertical,15)
               ScrollView(.horizontal,showsIndicators:false){
                   HStack{
                       ForEach(productList, id: \.id){
                           item in
                           ProductCard(product: item)
                       }
                   }
               }
           }.padding(24)
            }
 
        }
    }


//Navigation
var NavigationView: some View{
    HStack{
        Image(systemName: "line.3.horizontal")
            .imageScale(.large)
            .padding()
            .frame(width: 50, height: 50)
        VStack{
            Text("Hi Bipin ✋")
                .font(.title)
                .fontDesign(.rounded)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.green)
            Text("Enjoy our service")
                .font(.callout)
                .fontDesign(.rounded)
                .fontWeight(.bold)
                .foregroundStyle(.green)
        }
        Spacer()
        Image(systemName: "bell")
            .imageScale(.large)
            .foregroundColor(.green)
            .padding()
            .frame(width: 50, height: 50)
        
    }.padding()
}

var SearchBar: some View{
    @State  var search: String = ""
    return HStack{
        
    }
}


struct ProductCard: View {
   
    var product:Product
    
    var body: some View {
       
        VStack{
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100) // Adjust the width and height as needed
            Text(product.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.medium).foregroundStyle(.green)
            
        }
                
            }
  
            
}

#Preview {
    MainContentView()
}
