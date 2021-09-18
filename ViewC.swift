//
//  ViewC.swift
//  navigation
//
//  Created by jose juan alcantara rincon on 18/09/21.
//

import SwiftUI

struct ContentViewC: View {
    
    @Binding var rootActive: Bool
    
    var body: some View {
        VStack{
            Text("View C")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            Button("Go to View A"){
                rootActive = false
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .foregroundColor(.black)
    }
}

struct ContentViewC_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewC(rootActive: .constant(false))
    }
}
