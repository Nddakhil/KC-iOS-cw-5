//
//  ContentView.swift
//  Day 5
//
//  Created by Noor Al-Dakheel on 10/08/2022.
//

import SwiftUI
struct ContentView: View {
   @State var groceryItems = ["Cheetos","Indomie","Kinder","Lays","Pepsi"]
    @State var newItems = ""
    var body: some View {
        
        VStack{
        List(groceryItems, id:\.self){i in
            HStack{
                Image(i)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110, height: 100)
        }
        }
        
        HStack{
            Button {
                groceryItems.append(newItems)
            } label: {
                Image(systemName: "plus")
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
            }

            TextField("new items", text: $newItems)
            
        
            Button {
                groceryItems.append(newItems)
            } label: {
                Image(systemName: "minus")
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)            }
            
            }
        }
        }
    }
        
        
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

