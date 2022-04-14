//
//  ContentView.swift
//  SecretSquirrelApp
//
//  Created by Jerrad Thramer on 4/14/22.
//

import SwiftUI
import SecretSquirrelFramework

struct ContentView: View {
  
  let squirrel = SecretSquirrel()
    var body: some View {
      Text(squirrel.speech).padding()
      Text(squirrel.alamoSpeech).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
