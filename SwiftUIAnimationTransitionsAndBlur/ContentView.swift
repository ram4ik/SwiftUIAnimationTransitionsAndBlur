//
//  ContentView.swift
//  SwiftUIAnimationTransitionsAndBlur
//
//  Created by ramil on 21/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        
        VStack {
            
            Text("Learning SwiftUI")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.orange)
                .padding(4)
                .animation(Animation.easeInOut(duration: 0.3))
            
            Image("ui")
                .frame(width: show ? 414 : 300, height: show ? 600 : 300)
                .clipped()
                .cornerRadius(30)
                .blur(radius: show ? 0 : 30)
                .animation(.spring())
            
            Text("A course focused on UI")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.purple)
                .padding(4)
                .animation(Animation.easeIn(duration: 0.4))
            
            Button(action: {
                withAnimation{
                    self.show.toggle()
                }
            }) {
                Text("Animate")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
