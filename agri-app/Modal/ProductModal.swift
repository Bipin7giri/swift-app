import SwiftUI

struct Product:Identifiable,Hashable{
    var id:UUID = .init()
    var image:String;
    var name : String;
    var category:String;
    var price:Int;
    var color:Color;
}

var productList:[Product]=[
    Product(image:"crop",name:"Paddy",category: "crops",price: 455,color: .green),
]
