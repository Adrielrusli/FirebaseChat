//
//  ContentView.swift
//  FirebaseTrial
//
//  Created by Adriel Bernard Rusli on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var manager = MessageManager()
    
    var body: some View {
        VStack{
            VStack{
                ScrollViewReader { proxy in
                    ScrollView{
                        ForEach(manager.messages, id: \.id) {
                            message in
                            Bubble(message: message)
                            
                        }
                        
                    }.padding()
                        .onChange(of: manager.lastmessageID) { id in
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    
                }
                Field()
                    .environmentObject(MessageManager())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
