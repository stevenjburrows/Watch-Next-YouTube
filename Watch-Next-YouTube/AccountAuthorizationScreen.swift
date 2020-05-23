//
//  AccountAuthorizationScreen.swift
//  Watch-Next-YouTube
//
//  Created by Mikolaj Lukasik on 23/05/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import SwiftUI

struct AccountAuthorizationScreen: View {
    
    @State private var authType = 0
    
    var authTypeDescription = ["Log in", "Register account"]
    
    var body: some View {
        VStack{
            
            Picker("Options", selection: $authType) {
                ForEach(0 ..< authTypeDescription.count) { index in
                    Text(self.authTypeDescription[index])
                        .tag(index)
                }

            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Spacer()
            
            if authType == 0 {
                LoginScreen()
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            Spacer()
        }
    }
}

struct AccountAuthorizationScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccountAuthorizationScreen()
    }
}
