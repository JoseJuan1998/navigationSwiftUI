//
//  ViewA.swift
//  navigation
//
//  Created by jose juan alcantara rincon on 18/09/21.
//

import SwiftUI

struct ContentViewA: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: ContentViewB(rootActive: $isActive),
                    isActive: $isActive,
                    label: {
                        Text("Go to View B")
                    }
                )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow)
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(.black)
            .navigationTitle("View A")
        }
    }
}

struct ContentViewA_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewA()
    }
}
