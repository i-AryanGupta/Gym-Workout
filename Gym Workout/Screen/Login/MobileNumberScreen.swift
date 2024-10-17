//
//  MobileNumberScreen.swift
//  Gym Workout
//
//  Created by Yashom on 16/10/24.
//

import SwiftUI

struct MobileNumberScreen: View {
    
    @State var showOTP = false
    @State var txtMobile = ""
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack{
                    
                    Text("Enter your mobile number")
                        .font(.customFont(.semBold, fontSize: 18))
                        .maxLeft
                        .top15
                    
                    TextField("ie. 7065024890", text: $txtMobile)
                        .keyboardType(.phonePad)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                        .bottom15
                    
                    Button(action: {
                        showOTP = true
                    }, label: {
                        Text("Verify")
                            .font(.customFont(.semBold, fontSize: 14))
                            .horizontal15
                    })
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: OTPScreen(), isAction: $showOTP)
        .navHide
    }
}

struct MobileNumberScreen_Previews: PreviewProvider {
    static var previews: some View {
        MobileNumberScreen()
    }
}
