//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Ismail Elmaliki on 6/28/20.
//  Copyright © 2020 Ismail Elmaliki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@State var leftDiceNumber = 1
	@State var rightDiceNumber = 1
	
	var body: some View {
		ZStack {
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("diceeLogo")
				Spacer()
				HStack {
					DiceView(number: leftDiceNumber)
					DiceView(number: rightDiceNumber)
				}.padding(.horizontal)
				Spacer()
				Button(action: {
					self.leftDiceNumber = Int.random(in: 1...6)
					self.rightDiceNumber = Int.random(in: 1...6)
				}) {
					Text("Roll")
						.font(.system(size: 50))
						.fontWeight(.heavy)
						.foregroundColor(.white)
						.padding(.horizontal)
				}.background(Color.red)
				
			}
		}
	}
}
struct DiceView: View {
	let number: Int
	var body: some View {
		Image("dice\(number)")
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
