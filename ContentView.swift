//
//  ContentView.swift
//  tipCalculatorSwiftUi
//
//  Created by Cho, Loman L on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var tipPercent = ["15", "18", "20", "other"]
    
    @State private var selectedPercent = "15"
    @State private var isHidden = true
    @State private var cost:String = "0"
    
    var body: some View {
        ZStack {
            VStack
            {
                VStack(alignment: .leading) {
                    Text("Tip Calculator")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                    
//                    Picker("Please choose a tip amount", selection: $selectedPercent, content: {
//                        ForEach(tipPercent, id: \.self) {
//                            Text($0)
//                        }
//                    })
//                    pickerStyle(.segmented)
                    Picker("Choose tip", selection: $selectedPercent, content: {
                        Text("15").tag(0)
                        Text("18").tag(1)
                        Text("20").tag(2)
                        Text("other").tag(3)
                        
                    })
                    .pickerStyle(.segmented)
                }
                HStack
                {
                    Text("Please enter the cost of the meal here: ")
                        .frame(width: 300)
                    TextField("Please enter the total amount of the cost", text: $cost)
                    
                }
                Spacer()
                    .frame(width: 30)
                
                VStack(alignment: .trailing){
                    HStack{
                        Text("Tip Amount")
                        Text("something")
                    }
                    HStack{
                        Text("Total")
                        Text("something")
                    }
                    
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
