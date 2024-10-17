//
//  NameScreen.swift
//  Gym Workout
//
//  Created by Yashom on 16/10/24.
//

import SwiftUI

struct NameScreen: View {
    @State var showGoal = false
    @State var txtName = ""
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack{
                    
                    Text("Enter your Name")
                        .font(.customFont(.semBold, fontSize: 18))
                        .maxLeft
                        .top15
                    
                    TextField("Aryan Gupta", text: $txtName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                        .bottom15
                    
                    Button(action: {
                        showGoal = true
                    }, label: {
                        Text("Next")
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
        .bgNavLink(content: GoalScreen(), isAction: $showGoal)
        .navHide
    }
}

struct NameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NameScreen()
    }
}
