//
//  ContentView.swift
//  firstApp
//
//  Created by Selim Olmaz on 11.03.2023.
//

import SwiftUI

struct ContentView: View {
    // Allows to ui to read and write, if you chanced the value it is automaticly chanced by
    @State var total = "100";
    @State var tipPercent = 15.0;
    var body: some View {
        VStack() {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .foregroundColor(Color.blue)
                    .imageScale(.large)
                    .font(.largeTitle)
                Text("Tip Calculator")
                    .fontWeight(.heavy)
            }
            HStack {
                Text("$")
                //@ denotes this variable is able to modified by the ui element
                TextField("Amount", text: $total)
                    .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                // if you need read only value do not need to binding the "$" sign with your variable!
            }
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                    .padding(.all)
                    
                // \(variable) allows to you put a variable in string
                Text("\(Int(tipPercent))")
                Text("%")
                
            }
            Text("Tip Amount: $\((Double(total) ?? 100) * tipPercent / 100, specifier: "%0.2f")")
            .padding()
            
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
