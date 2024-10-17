//
//  GoalScreen.swift
//  Gym Workout
//
//  Created by Yashom on 16/10/24.
//

import SwiftUI

struct GoalScreen: View {
    
    @State var listArr = [
        ["name":"Fat Loss"],
        ["name":"Weight Gain"],
        ["name":"Muscle Gain"],
        ["name":"Other"]
    ]
    @State var selectIndex = 0
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack{
                    
                    Text("Select your Goal")
                        .font(.customFont(.semBold, fontSize: 18))
                        .maxLeft
                        .top15
                    
                    ForEach(0 ..< listArr.count, id: \.self){
                        index in
                        
                        Button(action: {
                            selectIndex = index
                        }, label: {
                            
                            Image(selectIndex == index ? "radio_select" : "radio_unselect")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            Text(listArr[index]["name"] ?? "")
                                .font(.customFont(.regular, fontSize: 18))
                                .maxCenter
                        })
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Done")
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
        .navHide
    }
}

struct GoalScreen_Previews: PreviewProvider {
    static var previews: some View {
        GoalScreen()
    }
}
