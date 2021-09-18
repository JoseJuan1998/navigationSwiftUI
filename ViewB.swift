//
//  ViewB.swift
//  navigation
//
//  Created by jose juan alcantara rincon on 18/09/21.
//

import SwiftUI

struct ContentViewB: View {
    
    @Binding var rootActive: Bool
    
    var body: some View {
        
        VStack{
            Text("View B")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            NavigationLink(
                destination: ContentViewC(rootActive: $rootActive),
                label: {
                    Text("Go to View C")
                }
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        .edgesIgnoringSafeArea(.all)
        .foregroundColor(.black)
        
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB(rootActive: .constant(false))
    }
}
