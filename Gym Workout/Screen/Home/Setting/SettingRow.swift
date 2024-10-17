//
//  SettingRow.swift
//  Gym Workout
//
//  Created by Yashom on 17/10/24.
//

import SwiftUI

struct SettingRow: View {
    
    @State var title = "Setting"
    @State var icon = ""
    @State var value = ""
    @State var isIconCircle = false
    // creating callback event when button click
    var action: ( () -> () )?
    
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            HStack(spacing: 20){
                
                if(isIconCircle){
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .cornerRadius(11)
                } else{
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .cornerRadius(11)
                }
                
                Text(title)
                    .font(.customFont(.semBold, fontSize: 15))
                    .maxLeft
                Text(value)
                    .font(.customFont(.semBold, fontSize: 15))
            }
            
        })
        .horizontal20
        .foregroundColor(Color.primaryText)
        .frame(height: 50)
        .background(Color.txtBG)
        .cornerRadius(5)
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow()
    }
}
