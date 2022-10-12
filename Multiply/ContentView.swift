//
//  ContentView.swift
//  Multiply
//
//  Created by Owen Johnson on 9/15/22.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .bold()
                .padding()
            TextField("Enter A Number", text: $firstNumberTextField)
                .frame(width: 125, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Text("X")
            TextField("Enter A Number", text: $secondNumberTextField)
                .frame(width: 125, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Button("Calculation") {
                if let firstNumber = Int (firstNumberTextField) {
                    if let secondNumber = Int (secondNumberTextField) {
                        calculation = firstNumber * secondNumber
                        
                    }
                }
            }
                if calculation == 64 {
                    //imageName = ("Pebis")
                    Text("Your Answer: \(calculation)")
                    Image("Pebis")
                        .resizable()
                        .scaledToFit()
                }
                else if calculation % 2 == 0 {
                    Text("Your Answer: \(calculation)")
                    Image("SouthPark")
            
            
                } else {
            
                    Image("TheScott")
                        .resizable()
            Text("Your Answer: \(calculation)")
                .frame(width: 125, height: 30, alignment: .center)
                .font(.body)
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Spacer()
        }
    }
}


//    if calculation == 64 {
//        //imageName = ("Pebis")
//        Image("Pebis")
//            .resizable()
//            .scaledToFit()
//    }
//    else if calculation % 2 == 0 {
//        Image("SouthPark")
//
//
//    } else {
//
//        Image("TheScott")
//            .resizable()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


}

