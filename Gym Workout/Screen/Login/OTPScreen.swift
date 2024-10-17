//
//  OTPScreen.swift
//  Gym Workout
//
//  Created by Yashom on 16/10/24.
//

import SwiftUI

struct OTPScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var showName = false
    @State var txtOTP = "1235"
    
    @State var timeRemaining = 30
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack{
                    
                    Text("Enter the code that was send to number")
                        .multilineTextAlignment(.center)
                        .maxCenter
                        .foregroundColor(.primaryText)
                        .top15
                    
                    ZStack{
                        
                        HStack(spacing: 20){
                            
                            Spacer()
                            
                            let otpCode = txtOTP.map{String($0)}
                            
                            ForEach( 0 ..< 4){
                                index in
                                
                                VStack{
                                    if (index < otpCode.count){
                                        Text(otpCode[index])
                                            .font(.customFont(.bold, fontSize: 25))
                                            .maxCenter
                                            
                                    }
                                    
                                    else{
                                        Text("")
                                            .font(.customFont(.bold, fontSize: 25))
                                            .maxCenter
                                    }
                                }
                                .frame(width: 60, height: 60)
                                .foregroundColor(.primaryText)
                                .background(Color.txtBG)
                                .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                            }
                            
                            Spacer()
                        }
                        
                        TextField("", text: $txtOTP)
                            .keyboardType(.phonePad)
                            .frame(height: 50)
                            .foregroundColor(.clear)
                            .accentColor(.clear)
                            
                    }
                    
                    Button(action: {
                        showName = true
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
                    
                    HStack{
                        
                        Button(action: {
                            mode.wrappedValue.dismiss()
                        }, label: {
                            Text("Change Number")
                                .font(.customFont(.regular, fontSize: 12))
                                .foregroundColor(.secondaryText)
                            
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Resend OTP (\(timeRemaining))")
                                .font(.customFont(.regular, fontSize: 12))
                                .foregroundColor(Color(hex: "8E44AD"))
                                .onReceive(timer, perform: { time in
                                    
                                    if(timeRemaining > 0)
                                    {
                                        timeRemaining -= 1
                                    }
                                    
                                })
                            
                        })
                        
                    }
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: NameScreen(), isAction: $showName)
        .navHide
    }
}

struct OTPScreen_Previews: PreviewProvider {
    static var previews: some View {
        OTPScreen()
    }
}
