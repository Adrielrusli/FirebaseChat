//
//  Field.swift
//  FirebaseTrial
//
//  Created by Adriel Bernard Rusli on 20/06/23.
//

import SwiftUI

struct Field: View {
    @EnvironmentObject var manager : MessageManager
    @State var messages = ""
    
    var body: some View {
        HStack{
            CTextfield(placeholder: Text("Enter Message"), text: $messages)
            Button{
                manager.sendMessages(text: messages)
                print("Sent")
                messages = ""
            }label: {
    
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(.black))
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color(.gray))
        .cornerRadius(30)
    }
}

struct Field_Previews: PreviewProvider {
    static var previews: some View {
        Field()
            .environmentObject(MessageManager())
    }
}

struct CTextfield: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View{
        ZStack(alignment: .leading){
            if text.isEmpty{
                placeholder
                    .opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
