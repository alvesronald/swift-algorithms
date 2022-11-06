//
//  ContentView.swift
//  HolaSwiftUi
//
//  Created by Ronald Silva Alves on 30/09/22.
//

import SwiftUI

struct ContentView: View {
        
    let myButtonText = "My Button";
    
    // variaveis com @State significa que poderão ser alteradas dentro do body
    @State private var show = false;
    var body: some View {
        Button(action: {
            show = true;
            print("the Button was pressed!")
        }){
            Text(myButtonText)
                .fontWeight(.black)
            
            // valores para databinding deve estar com "$" na frente => $show
        }.alert(isPresented: $show, content: {
            Alert(title: Text("TITLE"), message: Text("MESSAGE"), dismissButton: .default(Text("ACCEPT")))
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .preferredColorScheme(.dark);
            ContentView()
                .previewDevice("iPhone 12 Pro Max")
                
        }
    }
}
