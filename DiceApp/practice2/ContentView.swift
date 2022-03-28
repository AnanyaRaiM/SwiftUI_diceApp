//
//  ContentView.swift
//  practice2
//
//  Created by  Ananya M on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstDice = 1
    @State var secondDice = 1
    
    var body: some View {
        ZStack{
            Image("newbackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    ImageView(diceImage: String(firstDice))
                    ImageView(diceImage: String(secondDice))
                }
              //  padding(.horizontal)
                Spacer()
                Button(action: {
                    firstDice = Int.random(in: 1...6)
                    secondDice = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                .background(.red)
                .frame(width: 200, height: 200)
            }
        }
    }
}
struct ImageView: View {
    var diceImage: String
    var body: some View {
        Image(diceImage)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
            
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


